#include "ros/ros.h"
#include "std_msgs/String.h"
#include "mailroom/drone_cmd.h"
#include "mailroom/ATSCsignal.h"
#include "mailroom/drone_status.h"
#include "mailroom/drone_telemetry.h"
#include <String>


class DroneListener {
 public:
	DroneListener() = 0;

	DroneListener(const ros::Publisher& publisher);

	//TODO find out what kinds of messages these are
	void recordGPS();

	void recordOrientation();

	void recordHeight();

	void recordBattery();

	void recordSignalStatus();

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
	size_t azimuth_;
	size_t height_;
	size_t battery_;
	size_t dataIsNew;
	std::vector<signaldata_t> signaldata_;

}
