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
    delete status_t_pointer; 
  }
}

void Tuner::setChannelsList(const std::vector<size_t>& channels) {
  channels_ = channels;
	for(auto status_p : status_) {
		delete status_p;
	}
  status_ = std::vector<hdhomerun_tuner_status_t *>();
  for(size_t i = 0; i < channels.size(); ++i) {
    status_.push_back(new hdhomerun_tuner_status_t); // so there is a status on each channel
                                                     //   which contains info such as strength and SNQ
  }
}

std::vector<size_t> Tuner::getChannelsList() const {
  return channels_;
}

void Tuner::updateStatusOfChannel(const size_t channelIndex) {
  std::string channel = std::to_string(channels_[channelIndex]);
  hdhomerun_device_set_tuner_channel(device_, channel.data());
  hdhomerun_device_wait_for_lock(device_,status_[channelIndex]);
  hdhomerun_device_get_tuner_status(device_,NULL,
      status_[channelIndex]);
}

void Tuner::updateStatusOfAllChannels() {
  for(size_t i = 0; i < channels_.size(); ++i) {
    updateStatusOfChannel(i);
  }
}

size_t Tuner::getSignalStrengthOfChannel(const size_t channelIndex) {
	if(channelIndex < 0 || channelIndex > status_.size()) {
		std::cerr << "Invalid channel number!" << std::endl;
		return 0;
	}
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
	if(channelIndex < 0 || channelIndex > status_.size()) {
		std::cerr << "Invalid channel number!" << std::endl;
		return 0;
	}
  return status_[channelIndex]->signal_to_noise_quality;
}

std::vector<size_t> Tuner::getSNQOfAllChannels() {
  std::vector<size_t> SNQs; 
  for(auto status_p : status_) {
    SNQs.push_back(status_p->signal_to_noise_quality);
  }
  return SNQs;
}
/*
//TODO: test, finetune
void Tuner::publishData(ros::Publisher destination) {
  
  // This is a message object. You stuff it with data, and then publish it.
  std_msgs::String msg;
  std::stringstream ss;
  ss << getSignalStrengthOfAllChannels << getSNQOfAllChannels;
  msg.data = ss.str();

  ROS_INFO("%s", msg.data.c_str());

  /
   * The publish() function is how you send messages. The parameter
   * is the message object. The type of this object must agree with the type
   * given as a template parameter to the advertise<>() call, as was done
   * in the constructor above.
  /

  destination.publish(msg);
  }
}
*/
int testfn() {
  const std::string deviceID = "1034F75C-0";
  const std::vector<size_t> channels = {7, 11, 36, 43};
  Tuner tuner = Tuner(deviceID, channels);
  tuner.updateStatusOfAllChannels();
  std::cout << "individual channel tests" << std::endl;
  for(size_t i = 0; i < channels.size(); ++i) {
    std::cout << std::to_string(channels[i]) << '\t';
    std::cout << tuner.getSignalStrengthOfChannel(i) << '\t';
    std::cout << tuner.getSNQOfChannel(i) << std::endl;
  }
  std::vector<size_t> channelsList = tuner.getChannelsList();
  std::vector<size_t> sigStrengths =
    tuner.getSignalStrengthOfAllChannels();
  std::vector<size_t> SNQs = tuner.getSNQOfAllChannels(); 
  std::cout << std::endl << "all channels test" << std::endl;
  for(size_t i = 0; i < channelsList.size(); ++i) {
    std::cout << std::to_string(channelsList[i]) << '\t';
    std::cout << sigStrengths[i] << '\t';
    std::cout << SNQs[i] << std::endl;
  }
  return 0;
}
