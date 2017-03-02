#include "ros/ros.h"
#include "std_msgs/String.h"
#include "mailroom/drone_cmd.h"
#include "mailroom/ATSCsignal.h"
#include "mailroom/drone_status.h"
#include "mailroom/drone_telemetry.h"

#define START_MEASUREMENT_PROCEDURE 0
#define PAUSE 1
#define RESUME 2
#define TAKE_OFF 3
#define RETURN_HOME 4
#define LAND 5
#define FORWARD 6
#define LEFT 7
#define BACKWARD 8
#define RIGHT 9
#define LEFT_SPIN 10
#define DOWN 11
#define RIGHT_SPIN 12
#define KILL_MOTORS 13
#define IDLE 14

class DroneCommander {
 public:
	DroneCommander() = 0;

	DroneCommander(const ros::Publisher& publisher);

	void parseMessage(std_msgs::String::ConstPtr& msg);

	void publishCommand();

 private:
	ros::Publisher& publisher_;

	std::vector<size_t> heights_;
	std::vector<size_t> channels_;
	size_t lastButton_;

	size_t getButtonNumber(const std::string& restOfData);
	std::vector<size_t> getDataVector(const std::string& restOfData);
}
