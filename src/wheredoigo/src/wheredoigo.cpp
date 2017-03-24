// include files
#include <ros/ros.h>
#include <string>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <std_msgs/String.h>
//#include <tuner/TunerDevice.h>
 
// include custom messages
#include <mailroom/ATSCsignal.h> // channel[], SS[], SNQ[]
#include <mailroom/drone_cmd.h> // data, heights[], channels[]
#include <mailroom/drone_telemetry.h> // local_x, local_y, h, angle
#include <mailroom/drone_move.h> // local_x, local_y, h, angle, height, channels[]

// include header file generated from srv file
//#include <tuner/GetSignalStatus.h> // channels[] ; ATSCsignal[]

using namespace DJI::onboardSDK;

bool resume = true;

const std::string deviceID = "104689B9-0";
const uint32_t chans[] = {7, 11, 36, 43};

ros::Publisher actionPub;
ros::Publisher movePub;
ros::Publisher signalPub;

ros::Subscriber actionSub;
ros::Subscriber moveSub;
ros::Subscriber signalSub;

ros::ServiceClient client;
ros::ServiceServer service;

DJIDrone* drone;

/* bool getSignalData (tuner::GetSignalStatus::Request &req, tuner::GetSignalStatus::Response &res) {
     // req is array of channels, res is array of ATSCsignals
     // use Tuner methods to get SS and SNQ values to form ATSCsignal msg

     tuner::ATSCSignal sigs;

     for (int i = 0; i < req.channels.size(); i++) {
	   for (int j = 0; j < numSamples; j++) {
               SSval = tuner.getSignalStrengthOfChannel(req.channels[i]);
               SNQval = tuner.getSNQOfChannel(req.channels[i]);
               sigs.channel.push_back(req.channels[i]);
               sigs.SS.push_back(SSval);
               sigs.SNQ.push_back(SNQval);
           }
     }

     res.signaldata = sigs;
} */

void moveCallback(const mailroom::drone_move::ConstPtr& msg) {
    // parse message
    float x = msg->local_x;
    float y = msg->local_y;
    float h = msg->height;
    float yaw = msg->az_angle;

    // pos in meters, angle in degrees: 
    // https://developer.dji.com/onboard-sdk/documentation/appendix/index.html 
    drone->local_position_control(x, y, h, yaw);
} 

void actionCallback(const mailroom::drone_cmd::ConstPtr& msg) {
    // x - north, y - east, z - up

    float x = drone->local_position.x;
    float y = drone->local_position.y;
    float z = drone->local_position.z;
    float yaw = drone->gimbal.yaw;

    uint32_t id = msg->data;
    if (id == 0) { // idle
	
    } else if (id == 1) { // up and down
	std::vector<int>::const_iterator prev;
        for (std::vector<int>::const_iterator it = msg->heights.begin(); it != msg->heights.end(); ++it) {
		int height = *it;
		
		if (resume) {
			yaw = -180;
			
			float heightDiff;
			if (it == msg->heights.begin()) {
				heightDiff = height - static_cast<int>(z);
			} else {
				prev = it - 1;
				heightDiff = height - *prev;
			}
			std::cout << heightDiff << std::endl;
			if (heightDiff > 0) {
				for (int a = 0; a < heightDiff; a++) {
					for (int b = 0; b < 149; b++) {
						z = z + 0.01;
						drone->local_position_control(x,y,z,yaw);
						usleep(20000);
					}
					usleep(1000000);
				}
			} else if (height >= 1) {
				for (int a = 0; a < -heightDiff; a++) {
					for (int b = 0; b < 132; b++) {
						z = z - 0.01;
						drone->local_position_control(x,y,z,yaw);
						usleep(20000);
					}
					usleep(1000000);
				}
			}

			for (int j = 0; j < 12; j++) {

				/* if (!channels.empty()) {
					tuner::GetSignalStatus srv = new tuner::GetSignalStatus();
					srv.request.channels = msg.channels;
					client.call(srv);
				} */

				for (int k = 0; k < 15; k++) {
					drone->local_position_control(x,y,z,yaw);
					yaw = yaw + 2;
					usleep(20000);
				}

				usleep(2000000);
			}
		}
	} 
    } else if (id == 2) { // pause

    } else if (id == 3) { // resume

    } else if (id == 4) { // take off
	drone->takeoff();
    } else if (id == 5) { // return home
	drone->gohome();
    } else if (id == 6) { // land
	drone->landing();
    } else if (id == 7) { // forward - +~5% error
	for (int j = 0; j < 100; j++) {
		x = x + 0.01;
		drone->local_position_control(x, y, z, yaw);
		usleep(20000);
	}
    } else if (id == 8) { // left - +~10% error
	for (int j = 0; j < 100; j++) {
		y = y - 0.01;
		drone->local_position_control(x, y, z, yaw);
		usleep(20000);
	}
    } else if (id == 9) { // backward - +~5%
	for (int j = 0; j < 100; j++) {
		x = x - 0.01;
		drone->local_position_control(x, y, z, yaw);
		usleep(20000);
	}
    } else if (id == 10) { // right - +10% error
	for (int j = 0; j < 100; j++) {
		y = y + 0.01;
		drone->local_position_control(x, y, z, yaw);
		usleep(20000);
	}
    } else if (id == 11) { // left spin - -0.2% error
	for (int j = 0; j < 15; j++) {
		yaw = yaw - 2;
		if (yaw > -180) {
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
	}
    } else if (id == 12) { // down - -35.5% error; -~2% error
	if (z-1 > 1) {
		for (int i = 0; i < 132; i++) {
			z = z - 0.01;
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
	}
    } else if (id == 13) { // right spin - -0.85% error
	for (int j = 0; j < 15; j++) {
		yaw = yaw + 2;
		if (yaw < 180) {
			drone->local_position_control(x, y, z, yaw);
			usleep(20000);
		}
	}
    } else if (id == 14) { // kill motors

    } else if (id == 15) { // up -  -35.27% error; -~5% error
	for (int i = 0; i < 149; i++) {
		z = z + 0.01;
		drone->local_position_control(x, y, z, yaw);
		usleep(20000);
	}
    } else if (id == 16) { // request sdk permission control
   	drone->request_sdk_permission_control();
    } else if (id == 17) {
   	drone->release_sdk_permission_control();
    } else if (id == 18) {
	drone->drone_arm();
    } else if (id == 19) {
	drone->drone_disarm();
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv,"wheredoigo_node");
    ros::NodeHandle n;
    drone = new DJIDrone(n);

    //Tuner tuner = new Tuner(deviceID, chans);

    actionPub = n.advertise<mailroom::drone_cmd>("wheredoigo/action", 1000);
    movePub = n.advertise<mailroom::drone_move>("wheredoigo/move", 1000);
    // signalPub = n.advertise(mailroom::ATSCsignal>("signal", 1000);

    actionSub = n.subscribe("wheredoigo/action", 1000, actionCallback);
    moveSub = n.subscribe("wheredoigo/move", 1000, moveCallback);
    // signalSub = n.subscribe("signal", 1000, signalCallback);

    // client = n.serviceClient<tuner::GetSignalStatus>("getSignalStatus");
    // service = n.advertiseService("getSignalStatus", getSignalData);

    ros::Rate loop_rate(1);

    while (ros::ok()) {
       ros::spinOnce();
       loop_rate.sleep();
    }

    return 0;
}
