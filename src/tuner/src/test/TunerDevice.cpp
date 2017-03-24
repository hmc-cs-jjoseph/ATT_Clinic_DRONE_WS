#include "TunerDevice.h"

Tuner::Tuner(const std::string& deviceID) :
deviceID_{deviceID} { 
  device_ = hdhomerun_device_create_from_str(deviceID_.data(), NULL);
}

Tuner::Tuner(const std::string& deviceID,
    const std::vector<size_t>& channels) : 
    deviceID_{deviceID},
    channels_{channels} {
  setChannelsList(channels_);
  device_ = hdhomerun_device_create_from_str(deviceID_.data(), NULL);
}

Tuner::~Tuner() {
  hdhomerun_device_destroy(device_);
  for(auto status_t_pointer : status_) {
		if(status_t_pointer != NULL) {
			delete status_t_pointer; 
		}
  }
}

void Tuner::setChannelsList(const std::vector<size_t>& channels) {
  channels_ = channels;
	for(auto status_t_pointer : status_) {
		delete status_t_pointer;
		status_t_pointer = NULL;
	}
  status_.clear();
  for(size_t i = 0; i < channels.size(); ++i) {
    status_.push_back(new hdhomerun_tuner_status_t); // so there is a status on each channel
                                                     //   which contains info such as strength and SNQ
  }
}

std::vector<size_t> Tuner::getChannelsList() const {
  return channels_;
}

void Tuner::updateStatusOfChannel(const size_t channelIndex) {
	std::cout << "channelindex is: " << channelIndex << std::endl;
  std::string channel = std::to_string(channels_[channelIndex]);
	std::cout << "channel is: " << channel << std::endl;
  hdhomerun_device_set_tuner_channel(device_, channel.data());
	std::cout << "set tuner channel for channel: " << channel << std::endl;
  hdhomerun_device_wait_for_lock(device_,status_[channelIndex]);
	std::cout << "locked on channel: " << channel << std::endl;
  hdhomerun_device_get_tuner_status(device_,NULL,status_[channelIndex]);
	std::cout << "got signal status" << std::endl;
}

void Tuner::updateStatusOfAllChannels() {
  for(size_t i = 0; i < channels_.size(); ++i) {
    updateStatusOfChannel(i);
  }
}

size_t Tuner::getSignalStrengthOfChannel(const size_t channelIndex) {
  return status_[channelIndex]->signal_strength; 
}

std::vector<size_t> Tuner::getSignalStrengthOfAllChannels() {
  std::vector<size_t> signalStrengths;
  for(auto status_p : status_) {
    signalStrengths.push_back(status_p->signal_strength);
  }
  return signalStrengths;
}

size_t Tuner::getSNQOfChannel(const size_t channelIndex) {
  return status_[channelIndex]->signal_to_noise_quality;
}

std::vector<size_t> Tuner::getSNQOfAllChannels() {
  std::vector<size_t> SNQs; 
  for(auto status_p : status_) {
    SNQs.push_back(status_p->signal_to_noise_quality);
  }
  return SNQs;
}
