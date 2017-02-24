#include "downlink.h"

#define DEVICE_PORT "/dev/ttyS4"
#define BAUD 9600

serialib serial;

int main(int argc, char **argv) {
	ros::init(argc, argv, "downlink");
	ros::NodeHandle nh;
	ros::Subscriber dlDown = nh.subscribe("dl_down", 1000, sendToBase);

	std::atexit(cleanup);
	int rc = serial.Open(DEVICE_PORT, BAUD);
	if(rc != 1) {
		std::cout << "Error opening device port. Permission problem?" << std::endl;
		exit(1);
	}


	ros::spin();
	return 0;
}


void sendToBase(const std_msgs::String::ConstPtr& msg) {
	int rc = serial.WriteString(msg->data.c_str());
	if(rc != 1) {
		/* Do something for error handling */
	}
}

void cleanup() {
	serial.Close();
}
