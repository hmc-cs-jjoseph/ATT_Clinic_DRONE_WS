# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wheredoigo: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iwheredoigo:/home/attclinic/software/drone_ws/src/wheredoigo/msg;-Istd_msgs:/home/attclinic/ros_catkin_ws_kinetic/install_isolated/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wheredoigo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg" NAME_WE)
add_custom_target(_wheredoigo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wheredoigo" "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg" ""
)

get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg" NAME_WE)
add_custom_target(_wheredoigo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wheredoigo" "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wheredoigo
)
_generate_msg_cpp(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wheredoigo
)

### Generating Services

### Generating Module File
_generate_module_cpp(wheredoigo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wheredoigo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wheredoigo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wheredoigo_generate_messages wheredoigo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_cpp _wheredoigo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_cpp _wheredoigo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wheredoigo_gencpp)
add_dependencies(wheredoigo_gencpp wheredoigo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wheredoigo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wheredoigo
)
_generate_msg_eus(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wheredoigo
)

### Generating Services

### Generating Module File
_generate_module_eus(wheredoigo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wheredoigo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wheredoigo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wheredoigo_generate_messages wheredoigo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_eus _wheredoigo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_eus _wheredoigo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wheredoigo_geneus)
add_dependencies(wheredoigo_geneus wheredoigo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wheredoigo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wheredoigo
)
_generate_msg_lisp(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wheredoigo
)

### Generating Services

### Generating Module File
_generate_module_lisp(wheredoigo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wheredoigo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wheredoigo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wheredoigo_generate_messages wheredoigo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_lisp _wheredoigo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_lisp _wheredoigo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wheredoigo_genlisp)
add_dependencies(wheredoigo_genlisp wheredoigo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wheredoigo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wheredoigo
)
_generate_msg_nodejs(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wheredoigo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(wheredoigo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wheredoigo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wheredoigo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wheredoigo_generate_messages wheredoigo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_nodejs _wheredoigo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_nodejs _wheredoigo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wheredoigo_gennodejs)
add_dependencies(wheredoigo_gennodejs wheredoigo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wheredoigo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wheredoigo
)
_generate_msg_py(wheredoigo
  "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wheredoigo
)

### Generating Services

### Generating Module File
_generate_module_py(wheredoigo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wheredoigo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wheredoigo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wheredoigo_generate_messages wheredoigo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/ATSCsignal.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_py _wheredoigo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/attclinic/software/drone_ws/src/wheredoigo/msg/drone_cmd.msg" NAME_WE)
add_dependencies(wheredoigo_generate_messages_py _wheredoigo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wheredoigo_genpy)
add_dependencies(wheredoigo_genpy wheredoigo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wheredoigo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wheredoigo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wheredoigo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(wheredoigo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wheredoigo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wheredoigo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(wheredoigo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wheredoigo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wheredoigo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(wheredoigo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wheredoigo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wheredoigo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(wheredoigo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wheredoigo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wheredoigo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wheredoigo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(wheredoigo_generate_messages_py std_msgs_generate_messages_py)
endif()
