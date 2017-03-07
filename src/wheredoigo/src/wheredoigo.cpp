// include files
#include <ros/ros.h>
#include <string>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <std_msgs/String.h>
// #include <tuner/Tuner.h>

// include custom messages
#include <mailroom/ATSCsignal.h> // channel[], SS[], SNQ[]
#include <mailroom/drone_cmd.h> // data, heights[], channels[]
#include <mailroom/drone_telemetry.h> // local_x, local_y, h, angle
#include <mailroom/drone_move.h> // local_x, local_y, h, angle, height, channels[]

// include header file generated from srv file
// #include <tuner/GetSignalStatus.h> // channels[] ; ATSCsignal[]

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

// bool getSignalData (tuner::GetSignalStatus::Request &req, tuner::GetSignalStatus::Response &res) {
//     // req is array of channels, res is array of ATSCsignals
//     // use Tuner methods to get SS and SNQ values to form ATSCsignal msg

//     tuner::ATSCSignal sigs;

//     for (int i = 0; i < sizeof(req.channels); i++) {
//	   for (int j = 0; j < numSamples; j++) {
//             SSval = tuner.getSignalStrengthOfChannel(req.channels[i]);
//             SNQval = tuner.getSNQOfChannel(req.channels[i]);
//             sigs.channel[j+i*5] = req.channels[i];
//             sigs.SS[j+i*5] = SSval;
//             sigs.SNQ[j+i*5] = SNQval;
//         }
//     }

//     res.signals = sigs;
// }

void moveCallback(const mailroom::drone_move::ConstPtr& msg) {
    // parse message
    float x = msg->local_x;
    float y = msg->local_y;
    uint32_t h = msg->height;
    uint32_t yaw = msg->az_angle;
    
    // pos in meters, angle in degrees: 
    // https://developer.dji.com/onboard-sdk/documentation/appendix/index.html 
    drone->local_position_control(x, y, h, yaw);

//  if (!channels.empty()) {
//      tuner::GetSignalStatus srv = new tuner::GetSignalStatus();
//      srv.request.channels = msg.channels;
//      client.call(srv);
//  }
} 

void actionCallback(const mailroom::drone_cmd::ConstPtr& msg) {
    // x - north, y - east, z - up

    uint32_t id = msg->data;
    if (id == 0) { // idle
	
    } else if (id == 1) { // up and down
        mailroom::drone_move message;
        message.channels = msg->channels;

        for (int i = 0; i < sizeof(msg->heights)/sizeof(msg->heights[0]); i++) {
            if (resume) {
                int yaw = -180;
                message.height = msg->heights[i]; 

                for (int j = 0; j < 12; j++) {
                   message.az_angle = yaw;
                   movePub.publish(message); // publish location/orientation to move topic

                   yaw = yaw + 30;
               }
           }
        } 
    } else if (id == 2) { // pause

    } else if (id == 3) { // resume

    } else if (id == 4) { // take off
	std::cout << "Callback works" << std::endl;
	drone->takeoff();
    } else if (id == 5) { // return home
	drone->gohome();
    } else if (id == 6) { // land
	drone->landing();
    } else if (id == 7) { // forward
	drone->local_position_control(drone->local_position.x+1, drone->local_position.y, drone->local_position.z, drone->gimbal.yaw);
    } else if (id == 8) { // left
	drone->local_position_control(drone->local_position.x, drone->local_position.y-1, drone->local_position.z, drone->gimbal.yaw);
    } else if (id == 9) { // backward
	drone->local_position_control(drone->local_position.x-1, drone->local_position.y, drone->local_position.z, drone->gimbal.yaw);
    } else if (id == 10) { // right
	drone->local_position_control(drone->local_position.x, drone->local_position.y+1, drone->local_position.z, drone->gimbal.yaw);
    } else if (id == 11) { // left spin
	drone->local_position_control(drone->local_position.x, drone->local_position.y, drone->local_position.z, drone->gimbal.yaw-20);
    } else if (id == 12) { // down
	drone->local_position_control(drone->local_position.x, drone->local_position.y, drone->local_position.z-1, drone->gimbal.yaw);
    } else if (id == 13) { // right spin
	drone->local_position_control(drone->local_position.x, drone->local_position.y, drone->local_position.z, drone->gimbal.yaw+20);
    } else if (id == 14) { // kill motors

    } else if (id == 15) { // up
	drone->local_position_control(drone->local_position.x, drone->local_position.y, drone->local_position.z+1, drone->gimbal.yaw);
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv,"wheredoigo_node");
    ros::NodeHandle n;
    drone = new DJIDrone(n);

    drone->request_sdk_permission_control();
    drone->drone_arm();
    drone->takeoff();
    
    //Tuner tuner = new Tuner(deviceID, chans);

    actionPub = n.advertise<mailroom::drone_cmd>("action", 1000);
    movePub = n.advertise<mailroom::drone_move>("move", 1000);
    // signalPub = n.advertise(mailroom::ATSCsignal>("signal", 1000);

    actionSub = n.subscribe("action", 1000, actionCallback);
    moveSub = n.subscribe("move", 1000, moveCallback);
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
