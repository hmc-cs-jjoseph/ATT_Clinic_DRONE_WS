# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/attclinic/software/drone_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/attclinic/software/drone_ws/build

# Utility rule file for mailroom_generate_messages_py.

# Include the progress variables for this target.
include mailroom/CMakeFiles/mailroom_generate_messages_py.dir/progress.make

mailroom/CMakeFiles/mailroom_generate_messages_py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_ATSCsignal.py
mailroom/CMakeFiles/mailroom_generate_messages_py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_drone_cmd.py
mailroom/CMakeFiles/mailroom_generate_messages_py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/__init__.py


/home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_ATSCsignal.py: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/genpy/genmsg_py.py
/home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_ATSCsignal.py: /home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/attclinic/software/drone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python from MSG mailroom/ATSCsignal"
	cd /home/attclinic/software/drone_ws/build/mailroom && ../catkin_generated/env_cached.sh /usr/bin/python /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg -Imailroom:/home/attclinic/software/drone_ws/src/mailroom/msg -Istd_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg -Idji_sdk:/home/attclinic/software/drone_ws/src/dji_sdk/msg -Idji_sdk:/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg -Igeometry_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/geometry_msgs/cmake/../msg -Inav_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/nav_msgs/cmake/../msg -Iactionlib_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg -p mailroom -o /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg

/home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_drone_cmd.py: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/genpy/genmsg_py.py
/home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_drone_cmd.py: /home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/attclinic/software/drone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python from MSG mailroom/drone_cmd"
	cd /home/attclinic/software/drone_ws/build/mailroom && ../catkin_generated/env_cached.sh /usr/bin/python /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg -Imailroom:/home/attclinic/software/drone_ws/src/mailroom/msg -Istd_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg -Idji_sdk:/home/attclinic/software/drone_ws/src/dji_sdk/msg -Idji_sdk:/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg -Igeometry_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/geometry_msgs/cmake/../msg -Inav_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/nav_msgs/cmake/../msg -Iactionlib_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg -p mailroom -o /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg

/home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/__init__.py: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/genpy/genmsg_py.py
/home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/__init__.py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_ATSCsignal.py
/home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/__init__.py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_drone_cmd.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/attclinic/software/drone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating Python msg __init__.py for mailroom"
	cd /home/attclinic/software/drone_ws/build/mailroom && ../catkin_generated/env_cached.sh /usr/bin/python /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg --initpy

mailroom_generate_messages_py: mailroom/CMakeFiles/mailroom_generate_messages_py
mailroom_generate_messages_py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_ATSCsignal.py
mailroom_generate_messages_py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/_drone_cmd.py
mailroom_generate_messages_py: /home/attclinic/software/drone_ws/devel/lib/python2.7/dist-packages/mailroom/msg/__init__.py
mailroom_generate_messages_py: mailroom/CMakeFiles/mailroom_generate_messages_py.dir/build.make

.PHONY : mailroom_generate_messages_py

# Rule to build all files generated by this target.
mailroom/CMakeFiles/mailroom_generate_messages_py.dir/build: mailroom_generate_messages_py

.PHONY : mailroom/CMakeFiles/mailroom_generate_messages_py.dir/build

mailroom/CMakeFiles/mailroom_generate_messages_py.dir/clean:
	cd /home/attclinic/software/drone_ws/build/mailroom && $(CMAKE_COMMAND) -P CMakeFiles/mailroom_generate_messages_py.dir/cmake_clean.cmake
.PHONY : mailroom/CMakeFiles/mailroom_generate_messages_py.dir/clean

mailroom/CMakeFiles/mailroom_generate_messages_py.dir/depend:
	cd /home/attclinic/software/drone_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/attclinic/software/drone_ws/src /home/attclinic/software/drone_ws/src/mailroom /home/attclinic/software/drone_ws/build /home/attclinic/software/drone_ws/build/mailroom /home/attclinic/software/drone_ws/build/mailroom/CMakeFiles/mailroom_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mailroom/CMakeFiles/mailroom_generate_messages_py.dir/depend

