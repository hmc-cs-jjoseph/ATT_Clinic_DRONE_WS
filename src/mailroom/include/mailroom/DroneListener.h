#include <ros/ros.h>
#include <std_msgs/String.h>
#include <mailroom/ATSCsignal.h>
#include <dji_sdk/GlobalPosition.h>
#include <dji_sdk/Compass.h>
#include <dji_sdk/PowerStatus.h>
#include <string>


class DroneListener {
 public:

	DroneListener(ros::Publisher& publisher);

	void recordLocation(const dji_sdk::GlobalPosition::ConstPtr& msg);

	void recordOrientation(const dji_sdk::Compass::ConstPtr& msg);

	void recordBattery(const dji_sdk::PowerStatus::ConstPtr& msg);

	void recordSignalStatus(const mailroom::ATSCsignal::ConstPtr& msg);

	void publishAllData();

 private:
	ros::Publisher& publisher_;

	typedef struct __signaldata_t {
		size_t channel;
		size_t SS;
		size_t SNQ;
	} signaldata_t;

	float latitude_;
	float longitude_;
	int orientation_;
	size_t height_;
	size_t battery_;
	size_t dataIsNew_;
	std::vector<signaldata_t> signaldata_;

};
