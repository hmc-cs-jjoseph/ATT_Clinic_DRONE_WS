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

# Include any dependencies generated for this target.
include mailroom/CMakeFiles/mailroom_node.dir/depend.make

# Include the progress variables for this target.
include mailroom/CMakeFiles/mailroom_node.dir/progress.make

# Include the compile flags for this target's objects.
include mailroom/CMakeFiles/mailroom_node.dir/flags.make

mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o: mailroom/CMakeFiles/mailroom_node.dir/flags.make
mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o: /home/attclinic/software/drone_ws/src/mailroom/src/mailroom.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/attclinic/software/drone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o"
	cd /home/attclinic/software/drone_ws/build/mailroom && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o -c /home/attclinic/software/drone_ws/src/mailroom/src/mailroom.cpp

mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mailroom_node.dir/src/mailroom.cpp.i"
	cd /home/attclinic/software/drone_ws/build/mailroom && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/attclinic/software/drone_ws/src/mailroom/src/mailroom.cpp > CMakeFiles/mailroom_node.dir/src/mailroom.cpp.i

mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mailroom_node.dir/src/mailroom.cpp.s"
	cd /home/attclinic/software/drone_ws/build/mailroom && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/attclinic/software/drone_ws/src/mailroom/src/mailroom.cpp -o CMakeFiles/mailroom_node.dir/src/mailroom.cpp.s

mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.requires:

.PHONY : mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.requires

mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.provides: mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.requires
	$(MAKE) -f mailroom/CMakeFiles/mailroom_node.dir/build.make mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.provides.build
.PHONY : mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.provides

mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.provides.build: mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o


# Object files for target mailroom_node
mailroom_node_OBJECTS = \
"CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o"

# External object files for target mailroom_node
mailroom_node_EXTERNAL_OBJECTS =

/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: mailroom/CMakeFiles/mailroom_node.dir/build.make
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/libactionlib.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/libroscpp.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/librosconsole.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/librosconsole_log4cxx.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/librosconsole_backend_interface.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/libxmlrpcpp.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/libroscpp_serialization.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/librostime.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/ros_catkin_ws_kinetic/install_isolated/lib/libcpp_common.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /usr/local/lib/libconsole_bridge.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/software/drone_ws/devel/lib/libdji_sdk_lib.a
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: /home/attclinic/software/drone_ws/devel/lib/libmailroomtypes.so
/home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node: mailroom/CMakeFiles/mailroom_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/attclinic/software/drone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node"
	cd /home/attclinic/software/drone_ws/build/mailroom && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mailroom_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mailroom/CMakeFiles/mailroom_node.dir/build: /home/attclinic/software/drone_ws/devel/lib/mailroom/mailroom_node

.PHONY : mailroom/CMakeFiles/mailroom_node.dir/build

mailroom/CMakeFiles/mailroom_node.dir/requires: mailroom/CMakeFiles/mailroom_node.dir/src/mailroom.cpp.o.requires

.PHONY : mailroom/CMakeFiles/mailroom_node.dir/requires

mailroom/CMakeFiles/mailroom_node.dir/clean:
	cd /home/attclinic/software/drone_ws/build/mailroom && $(CMAKE_COMMAND) -P CMakeFiles/mailroom_node.dir/cmake_clean.cmake
.PHONY : mailroom/CMakeFiles/mailroom_node.dir/clean

mailroom/CMakeFiles/mailroom_node.dir/depend:
	cd /home/attclinic/software/drone_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/attclinic/software/drone_ws/src /home/attclinic/software/drone_ws/src/mailroom /home/attclinic/software/drone_ws/build /home/attclinic/software/drone_ws/build/mailroom /home/attclinic/software/drone_ws/build/mailroom/CMakeFiles/mailroom_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mailroom/CMakeFiles/mailroom_node.dir/depend
