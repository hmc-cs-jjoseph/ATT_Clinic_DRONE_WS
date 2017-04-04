/* \file downlink.h
 * \description provides the downlink node
 * \author Jesse Joseph
 */

#include <stdio.h>
#include <cstdlib>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <serialib.h>
#define DEVICE_PORT "/dev/ttyS4"
#define BAUD 9600

serialib serial;

void sendToBase(const std_msgs::String::ConstPtr& msg) {
	ROS_INFO("%s", msg->data.c_str());
	serial.WriteString(msg->data.c_str());
}

void cleanup() {
	serial.Close();
}

int main(int argc, char **argv) {
	ros::init(argc, argv, "downlink_node");
	ros::NodeHandle nh;
	ros::Subscriber dlDown = nh.subscribe("downlink/dl_down", 1000, sendToBase);

	std::atexit(cleanup);
	int rc = serial.Open(DEVICE_PORT, BAUD);
	if(rc != 1) {
		std::cout << "Error opening device port. Permission problem?" << std::endl;
		exit(1);
	}


	ros::spin();
	return 0;
}


