# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dji_sdk: 58 messages, 31 services")

set(MSG_I_FLAGS "-Idji_sdk:/home/attclinic/software/drone_ws/src/dji_sdk/msg;-Idji_sdk:/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg;-Igeometry_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/geometry_msgs/cmake/../msg;-Inav_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/nav_msgs/cmake/../msg;-Istd_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dji_sdk_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg" "dji_sdk/DroneTaskFeedback:dji_sdk/DroneTaskActionResult:actionlib_msgs/GoalID:dji_sdk/DroneTaskActionFeedback:dji_sdk/DroneTaskResult:dji_sdk/DroneTaskGoal:std_msgs/Header:dji_sdk/DroneTaskActionGoal:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv" "dji_sdk/MissionHotpointTask"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv" "dji_sdk/MissionFollowmeTarget"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg" "dji_sdk/DroneTaskResult:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg" "dji_sdk/WaypointNavigationActionResult:dji_sdk/WaypointList:dji_sdk/WaypointNavigationActionGoal:dji_sdk/Waypoint:actionlib_msgs/GoalID:dji_sdk/WaypointNavigationFeedback:dji_sdk/WaypointNavigationGoal:std_msgs/Header:dji_sdk/WaypointNavigationResult:actionlib_msgs/GoalStatus:dji_sdk/WaypointNavigationActionFeedback"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg" "dji_sdk/GlobalPositionNavigationGoal:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg" "dji_sdk/Waypoint"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv" "dji_sdk/MissionHotpointTask"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:dji_sdk/DroneTaskGoal"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dji_sdk/WaypointNavigationFeedback"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg" "dji_sdk/GlobalPositionNavigationFeedback:dji_sdk/GlobalPositionNavigationActionGoal:actionlib_msgs/GoalID:dji_sdk/GlobalPositionNavigationResult:dji_sdk/GlobalPositionNavigationGoal:dji_sdk/GlobalPositionNavigationActionFeedback:std_msgs/Header:dji_sdk/GlobalPositionNavigationActionResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg" "dji_sdk/Waypoint:dji_sdk/WaypointList"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg" "dji_sdk/MissionWaypointAction"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg" "dji_sdk/Waypoint:std_msgs/Header:actionlib_msgs/GoalID:dji_sdk/WaypointList:dji_sdk/WaypointNavigationGoal"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg" "std_msgs/Header:dji_sdk/LocalPositionNavigationFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg" "dji_sdk/GlobalPositionNavigationFeedback:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg" "dji_sdk/MissionWaypoint:dji_sdk/MissionWaypointAction"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg" "std_msgs/Header:dji_sdk/LocalPositionNavigationGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dji_sdk/LocalPositionNavigationResult"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg" "std_msgs/Header:dji_sdk/WaypointNavigationResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv" "dji_sdk/MissionWaypoint:dji_sdk/MissionWaypointTask:dji_sdk/MissionWaypointAction"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv" "dji_sdk/MissionWaypoint:dji_sdk/MissionWaypointTask:dji_sdk/MissionWaypointAction"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:dji_sdk/GlobalPositionNavigationResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv" "dji_sdk/MissionFollowmeTask"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalID:dji_sdk/DroneTaskFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg" NAME_WE)
add_custom_target(_dji_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk" "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg" "dji_sdk/LocalPositionNavigationActionFeedback:dji_sdk/LocalPositionNavigationGoal:actionlib_msgs/GoalID:dji_sdk/LocalPositionNavigationFeedback:dji_sdk/LocalPositionNavigationActionGoal:dji_sdk/LocalPositionNavigationResult:std_msgs/Header:actionlib_msgs/GoalStatus:dji_sdk/LocalPositionNavigationActionResult"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_msg_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)

### Generating Services
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)
_generate_srv_cpp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
)

### Generating Module File
_generate_module_cpp(dji_sdk
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dji_sdk_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dji_sdk_generate_messages dji_sdk_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_cpp _dji_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_gencpp)
add_dependencies(dji_sdk_gencpp dji_sdk_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_msg_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)

### Generating Services
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)
_generate_srv_eus(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
)

### Generating Module File
_generate_module_eus(dji_sdk
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dji_sdk_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dji_sdk_generate_messages dji_sdk_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_eus _dji_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_geneus)
add_dependencies(dji_sdk_geneus dji_sdk_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_msg_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)

### Generating Services
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)
_generate_srv_lisp(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
)

### Generating Module File
_generate_module_lisp(dji_sdk
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dji_sdk_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dji_sdk_generate_messages dji_sdk_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_lisp _dji_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_genlisp)
add_dependencies(dji_sdk_genlisp dji_sdk_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_msg_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)

### Generating Services
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)
_generate_srv_nodejs(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
)

### Generating Module File
_generate_module_nodejs(dji_sdk
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dji_sdk_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dji_sdk_generate_messages dji_sdk_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_nodejs _dji_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_gennodejs)
add_dependencies(dji_sdk_gennodejs dji_sdk_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg;/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_msg_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  "/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)

### Generating Services
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg;/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv"
  "${MSG_I_FLAGS}"
  "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)
_generate_srv_py(dji_sdk
  "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
)

### Generating Module File
_generate_module_py(dji_sdk
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dji_sdk_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dji_sdk_generate_messages dji_sdk_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTarget.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GlobalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneTaskControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/CameraActionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionCancel.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpGetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/GlobalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Gimbal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SDKPermissionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmSetTarget.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VersionCheck.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionHotpointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Velocity.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/AttitudeQuaternion.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionPause.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/FlightControlInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3RTK.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/RCChannels.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Waypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Compass.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalSpeedControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/Acceleration.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/WaypointList.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusHotpoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetRadius.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/DroneArmControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionPushInfo.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/PowerStatus.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionFollowmeTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/Activation.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TransparentTransmissionData.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCEnableControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SyncFlagControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionStart.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpReach.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/SendDataToRemoteDevice.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VirtualRCDataControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/LocalPosition.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypoint.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/A3GPS.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/TimeStamp.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/VelocityControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionEventWpUpload.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MessageFrequencyControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/LocalPositionControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpSetSpeed.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/GimbalAngleControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionWaypointTask.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusFollowme.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/AttitudeControl.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpDownload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionHpResetYaw.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionWpUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/msg/MissionStatusOther.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/dji_sdk/srv/MissionFmUpload.srv" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg" NAME_WE)
add_dependencies(dji_sdk_generate_messages_py _dji_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_genpy)
add_dependencies(dji_sdk_genpy dji_sdk_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dji_sdk_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(dji_sdk_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dji_sdk_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(dji_sdk_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dji_sdk_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(dji_sdk_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dji_sdk_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(dji_sdk_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dji_sdk_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(dji_sdk_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dji_sdk_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(dji_sdk_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dji_sdk_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(dji_sdk_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dji_sdk_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(dji_sdk_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dji_sdk_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(dji_sdk_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dji_sdk_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(dji_sdk_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
