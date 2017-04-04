#include <ros/ros.h>
#include <std_msgs/String.h>
#include <mailroom/drone_cmd.h>

#define IDLE 0
#define START_MEASUREMENT_PROCEDURE 1
#define PAUSE 2
#define RESUME 3
#define TAKE_OFF 4
#define RETURN_HOME 5
#define LAND 6
#define FORWARD 7
#define LEFT 8
#define BACKWARD 9
#define RIGHT 10
#define LEFT_SPIN 11
#define DOWN 12
#define RIGHT_SPIN 13
#define KILL_MOTORS 14
#define UP 15
#define REQ_SDK_CONT 16
#define REL_SDK_CONT 17
#define ARM 18
#define DISARM 19

class DroneCommander {
 public:

	DroneCommander(ros::Publisher& publisher);

	void parseMessage(const std_msgs::String::ConstPtr& msg);

	void publishCommand();

 private:
	ros::Publisher& publisher_;

	std::vector<size_t> heights_;
	std::vector<size_t> channels_;
	size_t lastButton_;
	size_t commandIsNew_;

	size_t getButtonNumber(const std::string& restOfData);
	std::vector<size_t> getDataVector(const std::string& restOfData);
};
