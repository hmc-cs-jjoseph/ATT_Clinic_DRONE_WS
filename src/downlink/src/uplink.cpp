#include "uplink.h"

#define DEVICE_PORT "/dev/ttyS4"
#define BAUD 9600
#define SERIAL_TIMEOUT 100
#define READ_BUFFER_SIZE 128

serialib serial;

int main(int argc, char **argv) {
	ros::init(argc, argv, "uplink");
	ros::NodeHandle nh;
	ros::Publisher dlUp = nh.advertise<std_msgs::String>("dl_up", 100);

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
			dlUp.publish(msg);
		}
	}
	
	return 0;
}

void cleanup() {
	serial.Close();
}
