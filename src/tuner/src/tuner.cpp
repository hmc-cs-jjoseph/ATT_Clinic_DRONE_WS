#include <ros/ros.h>
#include <tuner/GetSignalStatus.h>
#include <string>
#include <vector>
#include "TunerDevice.h"
#define DEVICEID "10487794-0"


bool getSignalStatus(tuner::GetSignalStatus::Request& req, tuner::GetSignalStatus::Response& res) {
	std::vector<size_t> reqChannels = req.channels;
	Tuner tunerdevice(DEVICEID, reqChannels);
	tunerdevice.updateStatusOfAllChannels();
	std::vector<size_t> channels = tunerdevice.getChannelsList();
	std::cout << "Channels: ";
	for(auto channel : channels) {
		std::cout << channel << ", ";
	}
	std::cout << std::endl;
	res.signaldata.channel = channels;
	std::vector<size_t> SS = tunerdevice.getSignalStrengthOfAllChannels();
	std::cout << "SS: ";
	for(auto sigstrength : SS) {
		std::cout << sigstrength << ", ";
	}
	std::cout << std::endl;
	res.signaldata.SS = SS;
	std::vector<size_t> SNQ = tunerdevice.getSNQOfAllChannels();
	std::cout << "SNQ: ";
	for(auto quality : SNQ) {
		std::cout << quality << ", ";
	}
	std::cout << std::endl;
	res.signaldata.SNQ = SNQ;
	return true;
}
	

int main(int argc, char **argv) {
	ros::init(argc, argv, "tuner_node");
	ros::NodeHandle n;
	ros::ServiceServer service = n.advertiseService("/tuner/get_signal_status", getSignalStatus);

	ros::spin();
	return 0;
}
