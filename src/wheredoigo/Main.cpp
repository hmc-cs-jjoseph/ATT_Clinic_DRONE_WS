// include files
#include <ros/ros.h>
#include <stdio.h>
#include <dji_sdk/include/dji_sdk/dji_drone.h>
#include <std_msgs/String.h>

// include custom messages
#include <mailroom/ATSCsignal.h> // channel, SS, SNQ
#include <mailroom/drone_cmd.h> // drone_telemetry, channels[] 
#include <mailroom/drone_status.h> // drone_telemetry, ATSCsignal[]
#include <mailroom/drone_telemetry.h> // long, lat, h, angle

// include header file generated from srv file
// #include <tuner/GetSignalStatus.h> // channels[] ; ATSCsignal[] 

// ros::ServiceClient client = n.serviceClient<tuner::GetSignalStatus>("getSignalStatus");
ros::ServiceServer service = n.advertiseService("getSignalStatus", getSignalData);

ros::Publisher takeOffPub = n.advertise<std_msgs::String>("takeOff", 10); // takes in any string
ros::Publisher landPub = n.advertise<std_msgs::String>("land", 10); // takes in any string
ros::Publisher movePub = n.advertise<mailroom:drone_cmd>("move", 10);
ros::Publisher signalPub = n.advertise<mailroom::ATSCsignal[]>("signal", 10);

ros::Subscriber takeOffSub = n.subscribe("takeOff", 10, takeOffCallback);
ros::Subscriber landSub = n.subscribe("land", 10, landCallback);
ros::Subscriber moveSub = n.subscribe("move", 10, moveCallback);
ros::Subscriber signalSub = n.subscribe("signal", 10, signalCallback);

const std::string deviceID = "104689B9-0";
const std::vector<char> chans = {7, 11, 36, 43};
// Tuner tuner = new Tuner(deviceID, chans);

using namespace DJI::onboardSDK;

void takeOffCallback(const std_msgs::StringConstPtr& msg) {
    drone->takeoff();
} 

void landCallback(const std_msgs::StringConstPtr& msg) {
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

void moveCallback(const mailroom:drone_cmd& msg) {
    // parse message
    float x = msg.telemetry.longitude;
    float y = msg.telemetry.latitude;
    float h = msg.telemetry.height;
    float yaw = msg.telemetry.az_angle;
    std::vector<char> channels = msg.channels; // channels should be array of channel indices
    
    // pos in meters, angle in degrees: 
    // https://developer.dji.com/onboard-sdk/documentation/appendix/index.html 
    drone->local_position_control(x, y, h, yaw);

//     numOfSamples = 5;
//     if (!channels.empty()) {
//         tuner::GetSignalStatus srv = new tuner::GetSignalStatus();
//         srv.request.channels = channels;

//         for (int i = 0; i < numOfSamples; i++) {
//             client.call(srv);

//             mailroom::drone_status stat = new mailroom::drone_status();
//             mailroom::ATSCsignal[] msgs = srv.response.signals;

//             stat.telemetry = msg.telemetry;
//             stat.signals = msgs;
//             signalPub.publish(stat);


//         }
//     }
} 


int main(int argc, char *argv[])
{
    ros::Rate r(10); // establish ROS rate to 10 Hz
    ros::spinOnce(); // clear callback queue

    ros::init(argc, argv, "sdk_client"); // 3rd arg - name of node created
    ros::NodeHandle n; // main access point to communications with ROS system

    DJIDrone* drone = new DJIDrone(n);

    std::vector<int> heights = {}; // TODO: get from user
    float longitude = ; // TODO: get from user
    float latitude = ; // TODO: get from user
    std::vector<char> channels = ; // TODO: get from user

    takeOffPub.publish("launch"); // publish to takeoff topic
    ros::spinOnce();

    mailroom::drone_cmd msg = new mailroom::drone_cmd();
    msg.telemetry.longitude = longitude;
    msg.telemetry.latitude = latitude;
    msg.channels = channels;

    for (int i = 0; i < heights.size(); i++) {
        float yaw = -180;
        msg.telemetry.height = heights[i]; 

        for (int j = 0; j < 12; j++) {
            msg.telemetry.az_angle = yaw;
            movePub.publish(msg); // publish location/orientation to move topic
            ros::spinOnce();

            yaw = yaw + 30;
        }
    }

    takeOffPub.publish("land"); // publish to land topic
    ros::spinonce();

    return 0;
}

