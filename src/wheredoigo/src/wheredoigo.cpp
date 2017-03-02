// include files
#include <ros/ros.h>
#include <string>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <std_msgs/String.h>
// #include <tuner/Tuner.h>

// include custom messages
#include <mailroom/ATSCsignal.h> // channel, SS, SNQ
#include <mailroom/drone_cmd.h> // drone_telemetry, channels[] 
#include <mailroom/drone_status.h> // drone_telemetry, ATSCsignal[]
#include <mailroom/drone_telemetry.h> // long, lat, h, angle
//include message containing command id, heights, global lat/long, heights

// include header file generated from srv file
// #include <tuner/GetSignalStatus.h> // channels[] ; ATSCsignal[] 

ros::NodeHandle n; // main access point to communications with ROS system

ros::Publisher takeOffPub = n.advertise<std_msgs::String>("takeOff", 10); // takes in any string
ros::Publisher landPub = n.advertise<std_msgs::String>("land", 10); // takes in any string
ros::Publisher actionPub = n.advertise<mailroom::drone_cmd>("action", 10); // takes in a string to indicate what sequence of actions drone shold do
ros::Publisher movePub = n.advertise<mailroom::drone_move>("move", 10);
ros::Publisher signalPub = n.advertise<mailroom::ATSCsignal[]>("signal", 10);

DJIDrone* drone = new DJIDrone(n);

const std::string deviceID = "104689B9-0";
const uint8_t chans[] = {7, 11, 36, 43};
// Tuner tuner = new Tuner(deviceID, chans);

using namespace DJI::onboardSDK;

void takeOffCallback(const std_msgs::String msg) {
    drone->takeoff();
} 

void landCallback(const std_msgs::String msg) {
    drone->landing();
} 

// bool getSignalData (tuner::GetSignalStatus::Request &req, tuner::GetSignalStatus::Response &res) {
//     // req is array of channels, res is array of ATSCsignals
//     // use Tuner methods to get SS and SNQ values to form ATSCsignal messages

//     mailroom::ATSCSignal sigs[sizeof(req.channels)];

//     for (int i = 0; i < sizeof(req.channels); i++) {
//         SSval = tuner.getSignalStrengthOfChannel(req.channels[i]);
//         SNQval = tuner.getSNQOfChannel(req.channels[i]);
//         sigs[i].channel = chans[channels[i]];
//         sigs[i].SS = SSval;
//         sigs[i].SNQ = SNQval;
//     }

//     res.signals = sigs;
// }

void moveCallback(const mailroom::drone_move& msg) {
    // parse message
    float x = msg.local_x;
    float y = msg.local_y;
    int h = msg.height;
    int yaw = msg.az_angle;
    int numChans = sizeof(msg.channels);
    int channels[numChans]; // channels should be array of channel indices
    channels = msg.channels;
    
    // pos in meters, angle in degrees: 
    // https://developer.dji.com/onboard-sdk/documentation/appendix/index.html 
    drone->local_position_control(x, y, h, yaw);

//     numOfSamples = 5;
//     if (!channels.empty()) {
//         tuner::GetSignalStatus srv = new tuner::GetSignalStatus();
//         srv.request.channels = channels;

//         for (int i = 0; i < numOfSamples; i++) {
//             client.call(srv);

//             mailroom::drone_status stat;
             
//             TODO: may need to simplify drone_status message, but how to express array of msgs?
    
//             signalPub.publish(stat);


//         }
//     }
} 

// TODO: replace this msg with new msg with command id 
void actionCallback(const mailroom::drone_cmd msg) {
    std::string id = msg.data;
    if (id.compare("UandD")) { // up and down
        mailroom::drone_move message;
        message.local_x = msg.local_x;
        message.local_y = msg.local_y;
        message.channels = msg.channels;
        int heights[] = msg.heights;

        for (int i = 0; i < sizeof(heights); i++) {
            int yaw = -180;
            message.height = heights[i]; 

            for (int j = 0; j < 12; j++) {
                message.az_angle = yaw;
                movePub.publish(message); // publish location/orientation to move topic

                yaw = yaw + 30;
            }
        } 
    }
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "sdk_client"); // 3rd arg - name of node created

    ros::spin();

    return 0;
}

// ros::ServiceClient client = n.serviceClient<tuner::GetSignalStatus>("getSignalStatus");
// ros::ServiceServer service = n.advertiseService("getSignalStatus", getSignalData);

ros::Subscriber takeOffSub = n.subscribe("takeOff", 10, takeOffCallback);
ros::Subscriber landSub = n.subscribe("land", 10, landCallback);
ros::Subscriber actionSub = n.subscribe("action", 10, actionCallback);
ros::Subscriber moveSub = n.subscribe("move", 10, moveCallback);
//ros::Subscriber signalSub = n.subscribe("signal", 10, signalCallback);
