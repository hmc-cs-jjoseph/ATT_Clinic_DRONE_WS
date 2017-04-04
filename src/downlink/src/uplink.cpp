/* \file downlink.h
 * \description provides the downlink node
 * \author Jesse Joseph
 */

#include <stdio.h>
#include <cstdlib>
#include <sstream>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <serialib.h>
#define DEVICE_PORT "/dev/ttyS4"
#define BAUD 9600
#define SERIAL_TIMEOUT 1000
#define READ_BUFFER_SIZE 128

serialib serial;

void cleanup() {
	serial.Close();
}

int main(int argc, char **argv) {
	ros::init(argc, argv, "uplink_node");
	ros::NodeHandle nh;
	ros::Publisher dlUp = nh.advertise<std_msgs::String>("downlink/dl_up", 100);

	std::atexit(cleanup);
	int rc = serial.Open(DEVICE_PORT, BAUD);
	if(rc != 1) {
		std::cout << "Error opening device port. Permission problem?" << std::endl;
		exit(1);
	}

	char buff[READ_BUFFER_SIZE];
	while(ros::ok()) {
		int msglen = serial.ReadString(buff, '\n', READ_BUFFER_SIZE, SERIAL_TIMEOUT);
		if(msglen > 0) {
			std::stringstream strmsg;
			for(size_t i = 0; i < msglen; ++i) {
				strmsg << buff[i];
			}
			std_msgs::String msg;
			msg.data = strmsg.str();
			ROS_INFO("%s", msg.data.c_str());
			dlUp.publish(msg);
		}
	}
	
	return 0;
}

