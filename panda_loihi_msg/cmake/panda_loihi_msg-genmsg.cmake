# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "panda_loihi_msg: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ipanda_loihi_msg:/home/jaimes/pandas_ws/src/panda_loihi_msg/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ipanda_loihi_msg:/home/jaimes/pandas_ws/src/panda_loihi_msg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(panda_loihi_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg" NAME_WE)
add_custom_target(_panda_loihi_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_loihi_msg" "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg" ""
)

get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg" NAME_WE)
add_custom_target(_panda_loihi_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_loihi_msg" "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg" "panda_loihi_msg/DetectedObject:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi_msg
)
_generate_msg_cpp(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(panda_loihi_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(panda_loihi_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(panda_loihi_msg_generate_messages panda_loihi_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_cpp _panda_loihi_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_cpp _panda_loihi_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_loihi_msg_gencpp)
add_dependencies(panda_loihi_msg_gencpp panda_loihi_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi_msg
)
_generate_msg_eus(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(panda_loihi_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(panda_loihi_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(panda_loihi_msg_generate_messages panda_loihi_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_eus _panda_loihi_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_eus _panda_loihi_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_loihi_msg_geneus)
add_dependencies(panda_loihi_msg_geneus panda_loihi_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi_msg
)
_generate_msg_lisp(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(panda_loihi_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(panda_loihi_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(panda_loihi_msg_generate_messages panda_loihi_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_lisp _panda_loihi_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_lisp _panda_loihi_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_loihi_msg_genlisp)
add_dependencies(panda_loihi_msg_genlisp panda_loihi_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi_msg
)
_generate_msg_nodejs(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(panda_loihi_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(panda_loihi_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(panda_loihi_msg_generate_messages panda_loihi_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_nodejs _panda_loihi_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_nodejs _panda_loihi_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_loihi_msg_gennodejs)
add_dependencies(panda_loihi_msg_gennodejs panda_loihi_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi_msg
)
_generate_msg_py(panda_loihi_msg
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi_msg
)

### Generating Services

### Generating Module File
_generate_module_py(panda_loihi_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(panda_loihi_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(panda_loihi_msg_generate_messages panda_loihi_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObject.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_py _panda_loihi_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaimes/pandas_ws/src/panda_loihi_msg/msg/DetectedObjectsStamped.msg" NAME_WE)
add_dependencies(panda_loihi_msg_generate_messages_py _panda_loihi_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_loihi_msg_genpy)
add_dependencies(panda_loihi_msg_genpy panda_loihi_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(panda_loihi_msg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET panda_loihi_msg_generate_messages_cpp)
  add_dependencies(panda_loihi_msg_generate_messages_cpp panda_loihi_msg_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(panda_loihi_msg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET panda_loihi_msg_generate_messages_eus)
  add_dependencies(panda_loihi_msg_generate_messages_eus panda_loihi_msg_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(panda_loihi_msg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET panda_loihi_msg_generate_messages_lisp)
  add_dependencies(panda_loihi_msg_generate_messages_lisp panda_loihi_msg_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(panda_loihi_msg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET panda_loihi_msg_generate_messages_nodejs)
  add_dependencies(panda_loihi_msg_generate_messages_nodejs panda_loihi_msg_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(panda_loihi_msg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET panda_loihi_msg_generate_messages_py)
  add_dependencies(panda_loihi_msg_generate_messages_py panda_loihi_msg_generate_messages_py)
endif()
