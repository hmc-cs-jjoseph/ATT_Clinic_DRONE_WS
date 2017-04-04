/* 
 * \file Tuner.h
 * \author Jesse Joseph
 * \brief provides AT&T Clinic specific interface for HDHomerun tuner
 */

#ifndef TUNER_H_INCLUDED
#define TUNER_H_INCLUDED

#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include "hdhomerun.h"
class Tuner {
  public:
    /**
    * \brief default constructor
    */
    Tuner() = default;

    /**
    * \brief construct from device ID
    * \params:deviceID string
    */
    Tuner(const std::string& deviceID);
    
    /**
    * \brief construct from device ID and list of channels
    * \params:deviceID, channels
    */
    Tuner(const std::string& deviceID, 
      const std::vector<size_t>& channels);
    
    /**
    * \brief destructor
    */
    ~Tuner();


    /**
    * \brief set the list of channels to sample
    * \params: channels, a size_t array of channel numbers
    */
    void setChannelsList(const std::vector<size_t>& channels);


    /**
    * \brief get the list of channels to sample
    * \returns a size_t array of channel numbers 
    */
    std::vector<size_t> getChannelsList() const;

    /**
    * \brief sample data for the given channel 
    * \param channelIndex, the index of the channel in channel list
    */
    void updateStatusOfChannel(size_t channelIndex);

    /**
    * \brief sample data for all 4 channels in the channel list 
    */
    void updateStatusOfAllChannels();
    
    /**
    * \brief get signal strength of given channel 
    * \param channelIndex, the index of the chennal in channel list 
    */
    size_t getSignalStrengthOfChannel(size_t channelIndex) ;

    /**
    * \brief get signal strength of all channels
    */
    std::vector<size_t> getSignalStrengthOfAllChannels();

    /**
    * \brief get signal to noise quality of given channel 
    * \param channelIndex, the index of the channel in channel list
    */
    size_t getSNQOfChannel(size_t channelIndex);
    /**
    * \brief get signal to noise quality of all channels
    */
    std::vector<size_t> getSNQOfAllChannels();

    /**
    * \brief publish SS/SNQ data to topic
    */

  private:
    std::string deviceID_;
    std::vector<size_t> channels_;
    hdhomerun_device_t* device_;
    std::vector<hdhomerun_tuner_status_t*> status_;
    
}; 
#endif
