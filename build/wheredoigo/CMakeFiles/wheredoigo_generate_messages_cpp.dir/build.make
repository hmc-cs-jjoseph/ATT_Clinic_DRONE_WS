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

# Utility rule file for wheredoigo_generate_messages_cpp.

# Include the progress variables for this target.
include wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/progress.make

wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp: /home/attclinic/software/drone_ws/devel/include/wheredoigo/ATSCsignal.h
wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp: /home/attclinic/software/drone_ws/devel/include/wheredoigo/drone_cmd.h


/home/attclinic/software/drone_ws/devel/include/wheredoigo/ATSCsignal.h: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/gencpp/gen_cpp.py
/home/attclinic/software/drone_ws/devel/include/wheredoigo/ATSCsignal.h: /home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg
/home/attclinic/software/drone_ws/devel/include/wheredoigo/ATSCsignal.h: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/attclinic/software/drone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from wheredoigo/ATSCsignal.msg"
	cd /home/attclinic/software/drone_ws/build/wheredoigo && ../catkin_generated/env_cached.sh /usr/bin/python /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg -Iwheredoigo:/home/attclinic/software/drone_ws/src/wheredoigo/msg -Istd_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg -p wheredoigo -o /home/attclinic/software/drone_ws/devel/include/wheredoigo -e /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/gencpp/cmake/..

/home/attclinic/software/drone_ws/devel/include/wheredoigo/drone_cmd.h: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/gencpp/gen_cpp.py
/home/attclinic/software/drone_ws/devel/include/wheredoigo/drone_cmd.h: /home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg
/home/attclinic/software/drone_ws/devel/include/wheredoigo/drone_cmd.h: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/attclinic/software/drone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from wheredoigo/drone_cmd.msg"
	cd /home/attclinic/software/drone_ws/build/wheredoigo && ../catkin_generated/env_cached.sh /usr/bin/python /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg -Iwheredoigo:/home/attclinic/software/drone_ws/src/wheredoigo/msg -Istd_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg -p wheredoigo -o /home/attclinic/software/drone_ws/devel/include/wheredoigo -e /home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/gencpp/cmake/..

wheredoigo_generate_messages_cpp: wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp
wheredoigo_generate_messages_cpp: /home/attclinic/software/drone_ws/devel/include/wheredoigo/ATSCsignal.h
wheredoigo_generate_messages_cpp: /home/attclinic/software/drone_ws/devel/include/wheredoigo/drone_cmd.h
wheredoigo_generate_messages_cpp: wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/build.make

.PHONY : wheredoigo_generate_messages_cpp

# Rule to build all files generated by this target.
wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/build: wheredoigo_generate_messages_cpp

.PHONY : wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/build

wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/clean:
	cd /home/attclinic/software/drone_ws/build/wheredoigo && $(CMAKE_COMMAND) -P CMakeFiles/wheredoigo_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/clean

wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/depend:
	cd /home/attclinic/software/drone_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/attclinic/software/drone_ws/src /home/attclinic/software/drone_ws/src/wheredoigo /home/attclinic/software/drone_ws/build /home/attclinic/software/drone_ws/build/wheredoigo /home/attclinic/software/drone_ws/build/wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wheredoigo/CMakeFiles/wheredoigo_generate_messages_cpp.dir/depend

