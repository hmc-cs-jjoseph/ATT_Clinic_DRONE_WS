execute_process(COMMAND "/home/attclinic/software/drone_ws/build/dji_sdk/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/attclinic/software/drone_ws/build/dji_sdk/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
