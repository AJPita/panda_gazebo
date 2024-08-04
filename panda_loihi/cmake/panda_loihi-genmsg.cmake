# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "panda_loihi: 0 messages, 0 services")

set(MSG_I_FLAGS "-Ipanda_loihi_msg:/home/jaimes/pandas_ws/src/panda_loihi_msg/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(panda_loihi_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(panda_loihi
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(panda_loihi_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(panda_loihi_generate_messages panda_loihi_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(panda_loihi_gencpp)
add_dependencies(panda_loihi_gencpp panda_loihi_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(panda_loihi
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(panda_loihi_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(panda_loihi_generate_messages panda_loihi_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(panda_loihi_geneus)
add_dependencies(panda_loihi_geneus panda_loihi_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(panda_loihi
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(panda_loihi_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(panda_loihi_generate_messages panda_loihi_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(panda_loihi_genlisp)
add_dependencies(panda_loihi_genlisp panda_loihi_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(panda_loihi
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(panda_loihi_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(panda_loihi_generate_messages panda_loihi_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(panda_loihi_gennodejs)
add_dependencies(panda_loihi_gennodejs panda_loihi_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(panda_loihi
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(panda_loihi_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(panda_loihi_generate_messages panda_loihi_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(panda_loihi_genpy)
add_dependencies(panda_loihi_genpy panda_loihi_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_loihi_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_loihi
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET panda_loihi_msg_generate_messages_cpp)
  add_dependencies(panda_loihi_generate_messages_cpp panda_loihi_msg_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_loihi
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET panda_loihi_msg_generate_messages_eus)
  add_dependencies(panda_loihi_generate_messages_eus panda_loihi_msg_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_loihi
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET panda_loihi_msg_generate_messages_lisp)
  add_dependencies(panda_loihi_generate_messages_lisp panda_loihi_msg_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_loihi
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET panda_loihi_msg_generate_messages_nodejs)
  add_dependencies(panda_loihi_generate_messages_nodejs panda_loihi_msg_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_loihi
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET panda_loihi_msg_generate_messages_py)
  add_dependencies(panda_loihi_generate_messages_py panda_loihi_msg_generate_messages_py)
endif()
