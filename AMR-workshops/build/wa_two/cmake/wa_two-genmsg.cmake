# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wa_two: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iwa_two:/home/sdhoro/amr/AMR-workshops/src/wa_two/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wa_two_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg" NAME_WE)
add_custom_target(_wa_two_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wa_two" "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg" ""
)

get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg" NAME_WE)
add_custom_target(_wa_two_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wa_two" "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg" ""
)

get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg" NAME_WE)
add_custom_target(_wa_two_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wa_two" "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wa_two
)
_generate_msg_cpp(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wa_two
)
_generate_msg_cpp(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wa_two
)

### Generating Services

### Generating Module File
_generate_module_cpp(wa_two
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wa_two
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wa_two_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wa_two_generate_messages wa_two_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_cpp _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_cpp _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_cpp _wa_two_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wa_two_gencpp)
add_dependencies(wa_two_gencpp wa_two_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wa_two_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wa_two
)
_generate_msg_eus(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wa_two
)
_generate_msg_eus(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wa_two
)

### Generating Services

### Generating Module File
_generate_module_eus(wa_two
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wa_two
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wa_two_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wa_two_generate_messages wa_two_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_eus _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_eus _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_eus _wa_two_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wa_two_geneus)
add_dependencies(wa_two_geneus wa_two_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wa_two_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wa_two
)
_generate_msg_lisp(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wa_two
)
_generate_msg_lisp(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wa_two
)

### Generating Services

### Generating Module File
_generate_module_lisp(wa_two
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wa_two
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wa_two_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wa_two_generate_messages wa_two_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_lisp _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_lisp _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_lisp _wa_two_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wa_two_genlisp)
add_dependencies(wa_two_genlisp wa_two_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wa_two_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wa_two
)
_generate_msg_nodejs(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wa_two
)
_generate_msg_nodejs(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wa_two
)

### Generating Services

### Generating Module File
_generate_module_nodejs(wa_two
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wa_two
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wa_two_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wa_two_generate_messages wa_two_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_nodejs _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_nodejs _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_nodejs _wa_two_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wa_two_gennodejs)
add_dependencies(wa_two_gennodejs wa_two_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wa_two_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wa_two
)
_generate_msg_py(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wa_two
)
_generate_msg_py(wa_two
  "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wa_two
)

### Generating Services

### Generating Module File
_generate_module_py(wa_two
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wa_two
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wa_two_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wa_two_generate_messages wa_two_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Model.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_py _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Belief.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_py _wa_two_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sdhoro/amr/AMR-workshops/src/wa_two/msg/Update.msg" NAME_WE)
add_dependencies(wa_two_generate_messages_py _wa_two_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wa_two_genpy)
add_dependencies(wa_two_genpy wa_two_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wa_two_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wa_two)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wa_two
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wa_two)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wa_two
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wa_two)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wa_two
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wa_two)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wa_two
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wa_two)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wa_two\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wa_two
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
