# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mailroom: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imailroom:/home/attclinic/software/drone_ws/src/mailroom/msg;-Istd_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg;-Idji_sdk:/home/attclinic/software/drone_ws/src/dji_sdk/msg;-Idji_sdk:/home/attclinic/software/drone_ws/devel/share/dji_sdk/msg;-Igeometry_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/geometry_msgs/cmake/../msg;-Inav_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mailroom_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg" NAME_WE)
add_custom_target(_mailroom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mailroom" "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg" NAME_WE)
add_custom_target(_mailroom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mailroom" "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mailroom
)
_generate_msg_cpp(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mailroom
)

### Generating Services

### Generating Module File
_generate_module_cpp(mailroom
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mailroom
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mailroom_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mailroom_generate_messages mailroom_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_cpp _mailroom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_cpp _mailroom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mailroom_gencpp)
add_dependencies(mailroom_gencpp mailroom_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mailroom_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mailroom
)
_generate_msg_eus(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mailroom
)

### Generating Services

### Generating Module File
_generate_module_eus(mailroom
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mailroom
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mailroom_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mailroom_generate_messages mailroom_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_eus _mailroom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_eus _mailroom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mailroom_geneus)
add_dependencies(mailroom_geneus mailroom_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mailroom_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mailroom
)
_generate_msg_lisp(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mailroom
)

### Generating Services

### Generating Module File
_generate_module_lisp(mailroom
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mailroom
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mailroom_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mailroom_generate_messages mailroom_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_lisp _mailroom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_lisp _mailroom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mailroom_genlisp)
add_dependencies(mailroom_genlisp mailroom_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mailroom_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mailroom
)
_generate_msg_nodejs(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mailroom
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mailroom
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mailroom
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mailroom_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mailroom_generate_messages mailroom_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_nodejs _mailroom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_nodejs _mailroom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mailroom_gennodejs)
add_dependencies(mailroom_gennodejs mailroom_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mailroom_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mailroom
)
_generate_msg_py(mailroom
  "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mailroom
)

### Generating Services

### Generating Module File
_generate_module_py(mailroom
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mailroom
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mailroom_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mailroom_generate_messages mailroom_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_py _mailroom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/mailroom/msg/drone_cmd.msg" NAME_WE)
add_dependencies(mailroom_generate_messages_py _mailroom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mailroom_genpy)
add_dependencies(mailroom_genpy mailroom_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mailroom_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mailroom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mailroom
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mailroom_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET dji_sdk_generate_messages_cpp)
  add_dependencies(mailroom_generate_messages_cpp dji_sdk_generate_messages_cpp)
endif()
if(TARGET tuner_generate_messages_cpp)
  add_dependencies(mailroom_generate_messages_cpp tuner_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mailroom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mailroom
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mailroom_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET dji_sdk_generate_messages_eus)
  add_dependencies(mailroom_generate_messages_eus dji_sdk_generate_messages_eus)
endif()
if(TARGET tuner_generate_messages_eus)
  add_dependencies(mailroom_generate_messages_eus tuner_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mailroom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mailroom
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mailroom_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET dji_sdk_generate_messages_lisp)
  add_dependencies(mailroom_generate_messages_lisp dji_sdk_generate_messages_lisp)
endif()
if(TARGET tuner_generate_messages_lisp)
  add_dependencies(mailroom_generate_messages_lisp tuner_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mailroom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mailroom
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mailroom_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET dji_sdk_generate_messages_nodejs)
  add_dependencies(mailroom_generate_messages_nodejs dji_sdk_generate_messages_nodejs)
endif()
if(TARGET tuner_generate_messages_nodejs)
  add_dependencies(mailroom_generate_messages_nodejs tuner_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mailroom)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mailroom\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mailroom
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mailroom_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET dji_sdk_generate_messages_py)
  add_dependencies(mailroom_generate_messages_py dji_sdk_generate_messages_py)
endif()
if(TARGET tuner_generate_messages_py)
  add_dependencies(mailroom_generate_messages_py tuner_generate_messages_py)
endif()
