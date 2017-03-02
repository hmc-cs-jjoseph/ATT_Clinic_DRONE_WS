#include "DroneListener.h"

DroneListener::DroneListener(ros::Publisher& publisher) :
	publisher_(publisher) {
	/* nothin else goin on here boyo */
}

void DroneListener::publishAllData() {
	std::string data;
	data += std::to_string(dataIsNew);
	data += "|latitude=";
	data += std::to_string(latitude_);
	data += "|longitude=";
	data += std::to_string(longitude_);
	data += "|battery="
	data += std::to_string(battery_);
	data += "|height=";
	data += std::to_string(height_);
	data += "|orientation=";
	data += std::to_string(orientation_);
	if(dataIsnew) {
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
		data += "|snq="
		for(auto channeldata : signaldata_) {
			data += std::to_string(channeldata.SNQ);
			data += ',';
		}
	}
	data += '\n';
	//TODO publish this string
}

	
