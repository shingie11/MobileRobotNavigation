# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "workshop_assessment_one: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iworkshop_assessment_one:/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(workshop_assessment_one_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg" NAME_WE)
add_custom_target(_workshop_assessment_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "workshop_assessment_one" "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg" ""
)

get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg" NAME_WE)
add_custom_target(_workshop_assessment_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "workshop_assessment_one" "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workshop_assessment_one
)
_generate_msg_cpp(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workshop_assessment_one
)

### Generating Services

### Generating Module File
_generate_module_cpp(workshop_assessment_one
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workshop_assessment_one
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(workshop_assessment_one_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(workshop_assessment_one_generate_messages workshop_assessment_one_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_cpp _workshop_assessment_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_cpp _workshop_assessment_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workshop_assessment_one_gencpp)
add_dependencies(workshop_assessment_one_gencpp workshop_assessment_one_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workshop_assessment_one_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workshop_assessment_one
)
_generate_msg_eus(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workshop_assessment_one
)

### Generating Services

### Generating Module File
_generate_module_eus(workshop_assessment_one
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workshop_assessment_one
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(workshop_assessment_one_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(workshop_assessment_one_generate_messages workshop_assessment_one_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_eus _workshop_assessment_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_eus _workshop_assessment_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workshop_assessment_one_geneus)
add_dependencies(workshop_assessment_one_geneus workshop_assessment_one_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workshop_assessment_one_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workshop_assessment_one
)
_generate_msg_lisp(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workshop_assessment_one
)

### Generating Services

### Generating Module File
_generate_module_lisp(workshop_assessment_one
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workshop_assessment_one
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(workshop_assessment_one_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(workshop_assessment_one_generate_messages workshop_assessment_one_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_lisp _workshop_assessment_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_lisp _workshop_assessment_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workshop_assessment_one_genlisp)
add_dependencies(workshop_assessment_one_genlisp workshop_assessment_one_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workshop_assessment_one_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workshop_assessment_one
)
_generate_msg_nodejs(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workshop_assessment_one
)

### Generating Services

### Generating Module File
_generate_module_nodejs(workshop_assessment_one
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workshop_assessment_one
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(workshop_assessment_one_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(workshop_assessment_one_generate_messages workshop_assessment_one_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_nodejs _workshop_assessment_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_nodejs _workshop_assessment_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workshop_assessment_one_gennodejs)
add_dependencies(workshop_assessment_one_gennodejs workshop_assessment_one_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workshop_assessment_one_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workshop_assessment_one
)
_generate_msg_py(workshop_assessment_one
  "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workshop_assessment_one
)

### Generating Services

### Generating Module File
_generate_module_py(workshop_assessment_one
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workshop_assessment_one
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(workshop_assessment_one_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(workshop_assessment_one_generate_messages workshop_assessment_one_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Update.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_py _workshop_assessment_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg/Belief.msg" NAME_WE)
add_dependencies(workshop_assessment_one_generate_messages_py _workshop_assessment_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workshop_assessment_one_genpy)
add_dependencies(workshop_assessment_one_genpy workshop_assessment_one_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workshop_assessment_one_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workshop_assessment_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workshop_assessment_one
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(workshop_assessment_one_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workshop_assessment_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workshop_assessment_one
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(workshop_assessment_one_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workshop_assessment_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workshop_assessment_one
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(workshop_assessment_one_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workshop_assessment_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workshop_assessment_one
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(workshop_assessment_one_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workshop_assessment_one)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workshop_assessment_one\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workshop_assessment_one
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(workshop_assessment_one_generate_messages_py std_msgs_generate_messages_py)
endif()
