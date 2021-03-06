#include "TunerDevice.h"

int main() {
  const std::string deviceID = "10487794-0";
  const std::vector<size_t> channels = {7, 11, 36, 43};
  Tuner tuner = Tuner(deviceID, channels);
  tuner.updateStatusOfAllChannels();
  std::cout << "individual channel tests" << std::endl;
  for(size_t i = 0; i < channels.size(); ++i) {
    std::cout << channels[i] << '\t';
    std::cout << tuner.getSignalStrengthOfChannel(i) << '\t';
    std::cout << tuner.getSNQOfChannel(i) << std::endl;
  }
  std::vector<size_t> channelsList = tuner.getChannelsList();
  std::vector<size_t> sigStrengths =
    tuner.getSignalStrengthOfAllChannels();
  std::vector<size_t> SNQs = tuner.getSNQOfAllChannels(); 
  std::cout << std::endl << "all channels test" << std::endl;
  for(size_t i = 0; i < channelsList.size(); ++i) {
    std::cout << channelsList[i] << '\t';
    std::cout << sigStrengths[i] << '\t';
    std::cout << SNQs[i] << std::endl;
  }
  return 0;
}



