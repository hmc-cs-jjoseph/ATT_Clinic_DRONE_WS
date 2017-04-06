// include files
#include <ros/ros.h>
#include <string>
#include <stdio.h>
#include <math.h>
#include <dji_sdk/dji_drone.h>
#include <std_msgs/String.h>
#include <pthread.h>
 
// include custom messages
#include <mailroom/ATSCsignal.h> // channel[], SS[], SNQ[]
#include <mailroom/drone_cmd.h> // data, heights[], channels[]
#include <mailroom/drone_telemetry.h> // local_x, local_y, h, angle
#include <mailroom/drone_move.h> // local_x, local_y, h, angle, height, channels[]

// include header file generated from srv file
#include <tuner/GetSignalStatus.h> // channels[] ; ATSCsignal[]

#define MEASURE_RESUME 1
#define MEASURE_PAUSE 0
#define MEASURE_CANCEL 2

typedef struct __measure_thread_args_t {
	std::vector<size_t> heights;
	std::vector<size_t> channels;
} measure_thread_args_t;

using namespace DJI::onboardSDK;

volatile int resume = MEASURE_RESUME;
pthread_mutex_t droneLock = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t pauseCondition;
pthread_t measureThread;
measure_thread_args_t args;

ros::Publisher actionPub;
ros::Publisher signalPub;
ros::Subscriber actionSub;
ros::Subscriber signalSub;

ros::ServiceClient client;
ros::ServiceServer service;

DJIDrone* drone;

void *measurementSequence(void *arg) {
	resume = MEASURE_RESUME;
	pthread_mutex_lock(&droneLock);
	measure_thread_args_t *msg = (measure_thread_args_t *) arg;
	float x = drone->local_position.x;
	float y = drone->local_position.y;
	float z = drone->local_position.z;
	float yaw = 2*acos(drone->attitude_quaternion.q0)*180/3.14159265;

	std::vector<size_t>::const_iterator prev;
	std::cout << "about to start iterating heights" << std::endl;
	for (std::vector<size_t>::const_iterator it = msg->heights.begin(); it != msg->heights.end(); ++it) {
		std::cout << "iterating" << std::endl;
		int height = *it;
		std::cout << "Height: " << ' ';
		std::cout << height << std::endl;

		
		/* Check resume status */
		/* If resume has been raised, release the drone lock
		 * to allow other actions to happen and then
		 * go to sleep, waiting for condition variable signal.
		 * On wakeup, check resume flag and either exit or
		 * try to regain drone lock and continue measurement
		 */
		while(resume == MEASURE_PAUSE) {
			pthread_cond_wait(&pauseCondition, &droneLock);
		}
		if(resume == MEASURE_CANCEL) {
			pthread_mutex_unlock(&droneLock);
			pthread_exit(NULL);
		}
		std::cout << "about to start measuring" << std::endl;

		yaw = -180;
		
		float heightDiff;
		if (it == msg->heights.begin()) {
			heightDiff = height - static_cast<int>(z+0.5);
		} else {
			prev = it - 1;
			heightDiff = height - *prev;
		}
		std::cout << "height difference: " << heightDiff << std::endl;
		if (heightDiff > 0) {
			for (int a = 0; a < heightDiff; a++) {
				for (int b = 0; b < 100; b++) { // 149
					z = z + 0.01;
					drone->local_position_control(x,y,z,yaw);
					usleep(20000);
				}
			}
		} else if (height >= 1) {
			for (int a = 0; a < -heightDiff; a++) {
				for (int b = 0; b < 100; b++) { // 132
					z = z - 0.01;
					drone->local_position_control(x,y,z,yaw);
					usleep(20000);
				}
			}
		}
		for (int j = 0; j < 12; j++) {
			if (!msg->channels.empty()) {
				tuner::GetSignalStatus srv;
				srv.request.channels = msg->channels;

				bool val = client.call(srv);
				std::cout << val << std::endl;

				if (val) {
					std::cout << "Call to service worked" << std::endl;
					mailroom::ATSCsignal data = srv.response.signaldata;
					signalPub.publish(data);
				}
			}
			/* Check resume status */
			/* If resume has been raised, release the drone lock
			 * to allow other actions to happen and then
			 * go to sleep, waiting for condition variable signal.
			 * On wakeup, check resume flag and either exit or
			 * try to regain drone lock and continue measurement
			 */
			while(resume == MEASURE_PAUSE) {
				pthread_cond_wait(&pauseCondition, &droneLock);
			}
			if (resume == MEASURE_CANCEL) {
				pthread_mutex_unlock(&droneLock);
				pthread_exit(NULL);
			}
			for (int k = 0; k < 15; k++) {
				drone->local_position_control(x,y,z,yaw);
				yaw = yaw + 2;
				usleep(20000);
			}
		}
		std::cout << "" << std::endl;
	}
	pthread_mutex_unlock(&droneLock);
	return NULL;
}

void signalCallback(const mailroom::ATSCsignal::ConstPtr& msg) {
	std::vector<size_t>::const_iterator i1 = msg->SS.begin();
	std::vector<size_t>::const_iterator i2 = msg->SNQ.begin();

	for (std::vector<size_t>::const_iterator i = msg->channel.begin(); i != msg->channel.end(); i++) {
		std::cout << "Channels: " << ' ';
		std::cout << *i << ' ';
		std::cout << *i1 << ' ';
		std::cout << *i2 << std::endl;
	}
}

void actionCallback(const mailroom::drone_cmd::ConstPtr& msg) {
	// x - north, y - east, z - up

	float x = drone->local_position.x;
	float y = drone->local_position.y;
	float z = drone->local_position.z;
	float yaw = 2*acos(drone->attitude_quaternion.q0)*180/3.14159265;

	uint32_t id = msg->data;
	if (id == 0) { // idle
		std::cout << "Command: Idle" << std::endl;
	} else if (id == 1) { // up and down
		std::cout << "Command: Whole Measurement Sequence" << std::endl;
		args.heights = msg->heights;
		args.channels = msg->channels;
		pthread_create(&measureThread, NULL, measurementSequence, &args);
	} else if (id == 2) { // pause
		std::cout << "Command: Pause" << std::endl;
		resume = MEASURE_PAUSE;
	} else if (id == 3) { // resume
		std::cout << "Command: Resume" << std::endl;
		resume = MEASURE_RESUME;
		pthread_cond_signal(&pauseCondition);
	} else if (id == 4) { // take off
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Take Off" << std::endl;
		drone->takeoff();

		for (int i = 0; i < 1050; i++) {
			z = z + 0.01;
			drone->local_position_control(x,y,z,yaw);
			usleep(20000);
		}
		std::cout << "Reached 10 meters" << std::endl;
		pthread_mutex_unlock(&droneLock);
	} else if (id == 5) { // return home
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Return home" << std::endl;
		drone->gohome();
		pthread_mutex_unlock(&droneLock);
	} else if (id == 6) { // land
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Land" << std::endl;
		drone->landing();
		pthread_mutex_unlock(&droneLock);
	} else if (id == 7) { // forward - +~5% error
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Move Forward 1 Meter" << std::endl;
		for (int j = 0; j < 100; j++) {
			x = x + 0.01;
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
		pthread_mutex_unlock(&droneLock);
	} else if (id == 8) { // left - +~10% error
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Move Left 1 Meter" << std::endl;
		for (int j = 0; j < 100; j++) {
			y = y - 0.01;
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
		pthread_mutex_unlock(&droneLock);
	} else if (id == 9) { // backward - +~5%
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Move Backward 1 Meter" << std::endl;
		for (int j = 0; j < 100; j++) {
			x = x - 0.01;
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
		pthread_mutex_lock(&droneLock);
	} else if (id == 10) { // right - +10% error
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Move Right 1 Meter" << std::endl;
		for (int j = 0; j < 100; j++) {
			y = y + 0.01;
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
		pthread_mutex_unlock(&droneLock);
	} else if (id == 11) { // left spin - -0.2% error
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Spin Left 30 Degrees" << std::endl;
		for (int j = 0; j < 15; j++) {
			yaw = yaw - 2;
			if (yaw > -180) {
				drone->local_position_control(x, y, z, yaw);
				usleep(20000);
			}
		}
		pthread_mutex_unlock(&droneLock);
	} else if (id == 12) { // down - -35.5% error; -~2% error
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Move Down 1 Meter" << std::endl;
		if (z-1 > 1) {
			for (int i = 0; i < 132; i++) {
				z = z - 0.01;
				drone->local_position_control(x, y, z, yaw);
				usleep(20000);
			}
		}
		pthread_mutex_unlock(&droneLock);
	} else if (id == 13) { // right spin - -0.85% error
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Spin Right 30 Degrees" << std::endl;
		for (int j = 0; j < 15; j++) {
			yaw = yaw + 2;
			if (yaw < 180) {
				drone->local_position_control(x, y, z, yaw);
				usleep(20000);
			}
		}
		pthread_mutex_unlock(&droneLock);
	} else if (id == 14) { // kill motors
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Kill Motors" << std::endl;
		pthread_mutex_unlock(&droneLock);
	} else if (id == 15) { // up -  -35.27% error; -~5% error
		std::cout << "Command: Move Up 1 Meter" << std::endl;
		for (int i = 0; i < 149; i++) {
			z = z + 0.01;
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
		pthread_mutex_unlock(&droneLock);
	} else if (id == 16) { // request sdk permission control
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Request SDK Permission Control" << std::endl;
		drone->request_sdk_permission_control();
		pthread_mutex_unlock(&droneLock);
	} else if (id == 17) {
		pthread_mutex_lock(&droneLock);
		std::cout << "Command: Release SDK Permission Control" << std::endl;
		drone->release_sdk_permission_control();
		pthread_mutex_unlock(&droneLock);
	}
}

int main(int argc, char **argv) {
	ros::init(argc, argv,"wheredoigo_node");
	ros::NodeHandle n;
	drone = new DJIDrone(n);

	actionPub = n.advertise<mailroom::drone_cmd>("wheredoigo/action", 1000);
	actionSub = n.subscribe("wheredoigo/action", 1000, actionCallback);

	signalPub = n.advertise<mailroom::ATSCsignal>("wheredoigo/signal", 1000);
	signalSub = n.subscribe("wheredoigo/signal", 1000, signalCallback);

	client = n.serviceClient<tuner::GetSignalStatus>("/tuner/get_signal_status");

	ros::Rate loop_rate(1);

	std::cout << "Ready to Receive Commands" << std::endl;
	while (ros::ok()) {
			ros::spinOnce();
			loop_rate.sleep();
	}

	delete drone;

	return 0;
}
