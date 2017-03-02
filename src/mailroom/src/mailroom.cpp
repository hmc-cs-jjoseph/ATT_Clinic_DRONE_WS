#include "mailroom.h"

int main(int argc, char **argv) {
	ros::init(argc, argv, "mailroom_node");
	ros::NodeHandle nh;
	ros::Subscriber inputData = nh.subscribe("downlink/dl_up", 100, parseStringData);

	ros::Rate loop_rate(1);
	while(ros::ok()) {


		loop_rate.sleep();
		ros::spinOnce();
	}

	

	return 0;
}
