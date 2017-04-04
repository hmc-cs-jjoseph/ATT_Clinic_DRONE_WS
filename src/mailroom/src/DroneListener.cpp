#include "DroneListener.h"

DroneListener::DroneListener(ros::Publisher& publisher) :
	publisher_(publisher),
	latitude_(0),
	longitude_(0),
	orientation_(0),
	height_(0),
	battery_(0),
	dataIsNew_(0) {
	/* nothin else goin on here boyo */
}

void DroneListener::publishAllData() {
	std::string data;
	data += std::to_string(dataIsNew_);
	data += "|latitude=";
	data += std::to_string(latitude_);
	data += "|longitude=";
	data += std::to_string(longitude_);
	data += "|battery=";
	data += std::to_string(battery_);
	data += "|height=";
	data += std::to_string(height_);
	data += "|orientation=";
	data += std::to_string(orientation_);
	if(dataIsNew_) {
		data += "|channels=";
		for(auto channeldata : signaldata_) {
			data += std::to_string(channeldata.channel);
			data += ',';
		}
		data += "|ss=";
		for(auto channeldata : signaldata_) {
			data += std::to_string(channeldata.SS);
			data += ',';
		}
		data += "|snq=";
		for(auto channeldata : signaldata_) {
			data += std::to_string(channeldata.SNQ);
			data += ',';
		}
		dataIsNew_ = 0;
	}
	data += '\n';
	std_msgs::String msg;
	msg.data = data;
	publisher_.publish(msg);
}

	
void DroneListener::recordLocation(const dji_sdk::GlobalPosition::ConstPtr& msg) {
	latitude_ = msg->latitude;
	longitude_ = msg->longitude;
	height_ = msg->height;
}

void DroneListener::recordBattery(const dji_sdk::PowerStatus::ConstPtr& msg) {
	battery_ = msg->percentage;
}

void DroneListener::recordOrientation(const dji_sdk::Compass::ConstPtr& msg) {
	orientation_ = atan2(msg->y, msg->x);
}

void DroneListener::recordSignalStatus(const mailroom::ATSCsignal::ConstPtr& msg) {
	signaldata_.clear();
	for(size_t i = 0; i < msg->channel.size(); ++i) {
		signaldata_t signal = {msg->channel[i], msg->SS[i], msg->SNQ[i]};
		signaldata_.push_back(signal);
	}
	dataIsNew_ = 1;
}

