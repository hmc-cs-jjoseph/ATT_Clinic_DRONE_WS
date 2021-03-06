#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/UInt32.h>
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

	void recordDroneState(const std_msgs::UInt32::ConstPtr& msg);

	void publishAllData();

 private:
	ros::Publisher& publisher_;

	typedef struct __signaldata_t {
		size_t channel;
		size_t SS;
		size_t SNQ;
	} signaldata_t;

	double latitude_;
	double longitude_;
	int orientation_;
	float height_;
	size_t battery_;
	size_t dataIsNew_;
	size_t state_;
	std::vector<signaldata_t> signaldata_;

};
