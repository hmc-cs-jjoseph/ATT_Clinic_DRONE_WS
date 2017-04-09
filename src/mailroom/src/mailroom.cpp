/* \file mailroom.h
 * \description provides the mailroom node
 * \author Jesse Joseph
 */

#include <ros/ros.h>
#include <stdio.h>
#include <string>
#include <std_msgs/String.h>
#include <mailroom/drone_cmd.h>
#include "DroneCommander.h"
#include "DroneListener.h"

int main(int argc, char **argv) {
	ros::init(argc, argv, "mailroom_node");
	ros::NodeHandle nh;

	ros::Publisher commandPublisher = nh.advertise<mailroom::drone_cmd>("wheredoigo/action", 100);
	ros::Publisher listenPublisher = nh.advertise<std_msgs::String>("downlink/dl_down", 100);

	DroneListener lstn = DroneListener(listenPublisher);
	DroneCommander cmd = DroneCommander(commandPublisher);

	ros::Subscriber locationData = nh.subscribe("dji_sdk/global_position", 1, &DroneListener::recordLocation, &lstn);
	ros::Subscriber orientationData = nh.subscribe("dji_sdk/compass", 1, &DroneListener::recordOrientation, &lstn);
	ros::Subscriber powerData = nh.subscribe("dji_sdk/power_status", 1, &DroneListener::recordBattery, &lstn);
	ros::Subscriber signalData = nh.subscribe("wheredoigo/signal", 10, &DroneListener::recordSignalStatus, &lstn); 
	ros::Subscriber userInputData = nh.subscribe("downlink/dl_up", 100, &DroneCommander::parseMessage, &cmd);
	ros::Subscriber stateData = nh.subscribe("wheredoigo/state", 10, &DroneListener::recordDroneState, &lstn);

	ros::Rate loop_rate(1);
	while(ros::ok()) {
		ros::spinOnce();
		cmd.publishCommand();
		lstn.publishAllData();
		loop_rate.sleep();
	}

	return 0;
}
