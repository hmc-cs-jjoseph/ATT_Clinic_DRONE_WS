#include "DroneCommander.h"

DroneCommander::DroneCommander(const ros::Publisher& publisher) :
publisher_{publisher},
lastButton_{IDLE} {
	/* Nothing to do here! */
}

void DroneCommander::parseMessage(std_msgs::String::ConstPtr& msg) {
	std::string serialmsg = msg.data;
	
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
			} else {
				/* how are we gonna do error handling */
			}
		} else if(c == '|') {
			keyword = "";
		} else {
			keyword += c;
		}
	}
}

void DroneCommander::publishCommand() {
	mailroom::drone_cmd msg;
	switch(lastButton_) {
		case START_MEASUREMENT_PROCEDURE:
			//
			break;
		case PAUSE :
			//
			break;
		case RESUME :
			//
			break;
		case TAKE_OFF :
			//
			break;
		case RETURN_HOME :
			//
			break;
		case LAND :
			//
			break;
		case FORWARD :
			//
			break;
		case LEFT :
			//
			break;
		case BACKWARD :
			//
			break;
		case RIGHT :
			//
			break;
		case LEFT_SPIN :
			//
			break;
		case DOWN :
			//
			break;
		case RIGHT_SPIN :
			//
			break;
		case KILL_MOTORS :
			//
			break;
		default :
			break;
	}
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
		if(c == '|') {
			break;
		} else if (c == ',') {
			dataVector.push_back((size_t) std::stoul(value));
			value = "";
		} else {
			value == c;
		}
	}
	return dataVector;
}



