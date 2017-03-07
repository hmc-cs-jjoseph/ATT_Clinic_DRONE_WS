#include <ros/ros.h>
#include <tuner/GetSignalStatus.h>
#include <string>
#include <vector>
#include "TunerDevice.h"
#define DEVICEID "1034F75C-0"

Tuner tunerdevice;

bool getSignalStatus(tuner::GetSignalStatus::Request& req, tuner::GetSignalStatus::Response& res) {
	tunerdevice.setChannelsList(req.channels);
	tunerdevice.updateStatusOfAllChannels();
	res.signaldata.channel = tunerdevice.getChannelsList();
	res.signaldata.SS = tunerdevice.getSignalStrengthOfAllChannels();
	res.signaldata.SNQ = tunerdevice.getSNQOfAllChannels();
	return true;
}
	

int main(int argc, char **argv) {
	ros::init(argc, argv, "/tuner/signal_status_srv");
	ros::NodeHandle n;
	const std::string deviceID = DEVICEID;
	tunerdevice = Tuner(deviceID);
	ros::ServiceServer service = n.advertiseService("/tuner/get_signal_status", getSignalStatus);

	ros::spin();
	return 0;
}
