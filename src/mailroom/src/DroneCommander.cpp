#include "DroneCommander.h"

DroneCommander::DroneCommander(ros::Publisher& publisher) :
publisher_(publisher),
lastButton_(IDLE),
commandIsNew_(1) {
	/* Nothing to do here! */
}

void DroneCommander::parseMessage(const std_msgs::String::ConstPtr& msg) {
	std::string serialmsg = msg->data.c_str();
	
	std::string keyword;
	std::string restOfData;
	for(size_t i = 0; i < serialmsg.length(); ++i) {
		char c = serialmsg[i];
		if(c == '=') {
			restOfData = serialmsg.substr(i+1);
			if(keyword == "button") {
				lastButton_ = getButtonNumber(restOfData);
			} else if(keyword == "channels") {
				channels_ = getDataVector(restOfData);
			} else if(keyword == "heights") {
				heights_ = getDataVector(restOfData);
			} 
		} else if(c == '|') {
			keyword = "";
		} else {
			keyword += c;
		}
	}
	commandIsNew_ = 1;
}

void DroneCommander::publishCommand() {
	if(commandIsNew_) {
		mailroom::drone_cmd cmd;
		cmd.data = lastButton_;
		ROS_INFO("Sending command: %d\n", cmd.data);
		if(lastButton_ == START_MEASUREMENT_PROCEDURE) {
			cmd.heights = heights_;
			cmd.channels = channels_;
		}
		publisher_.publish(cmd);
	}
	commandIsNew_ = 0;
}
	
size_t DroneCommander::getButtonNumber(const std::string& restOfData) {
	std::string value;
	for(char c : restOfData) {
		if(c == '|') {
			break;
		} else {
			value += c;
		}
	}
	return (size_t) std::stoul(value);
}

std::vector<size_t> DroneCommander::getDataVector(const std::string& restOfData) {
	std::string value;
	std::vector<size_t> dataVector;
	for(char c : restOfData) {
		if(c == '|' || c == '\n') {
			dataVector.push_back((size_t) std::stoul(value));
			break;
		} else if (c == ',') {
			dataVector.push_back((size_t) std::stoul(value));
			value = "";
		} else {
			value += c;
		}
	}
	return dataVector;
}



