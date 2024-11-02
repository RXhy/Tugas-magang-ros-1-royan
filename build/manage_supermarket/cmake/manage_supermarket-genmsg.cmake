# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "manage_supermarket: 0 messages, 6 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(manage_supermarket_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv" NAME_WE)
add_custom_target(_manage_supermarket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manage_supermarket" "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv" ""
)

get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv" NAME_WE)
add_custom_target(_manage_supermarket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manage_supermarket" "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv" ""
)

get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv" NAME_WE)
add_custom_target(_manage_supermarket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manage_supermarket" "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv" ""
)

get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv" NAME_WE)
add_custom_target(_manage_supermarket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manage_supermarket" "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv" ""
)

get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv" NAME_WE)
add_custom_target(_manage_supermarket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manage_supermarket" "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv" ""
)

get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv" NAME_WE)
add_custom_target(_manage_supermarket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manage_supermarket" "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_cpp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_cpp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_cpp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_cpp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_cpp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
)

### Generating Module File
_generate_module_cpp(manage_supermarket
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(manage_supermarket_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(manage_supermarket_generate_messages manage_supermarket_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_cpp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_cpp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_cpp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_cpp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_cpp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_cpp _manage_supermarket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manage_supermarket_gencpp)
add_dependencies(manage_supermarket_gencpp manage_supermarket_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manage_supermarket_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
)
_generate_srv_eus(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
)
_generate_srv_eus(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
)
_generate_srv_eus(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
)
_generate_srv_eus(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
)
_generate_srv_eus(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
)

### Generating Module File
_generate_module_eus(manage_supermarket
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(manage_supermarket_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(manage_supermarket_generate_messages manage_supermarket_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_eus _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_eus _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_eus _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_eus _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_eus _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_eus _manage_supermarket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manage_supermarket_geneus)
add_dependencies(manage_supermarket_geneus manage_supermarket_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manage_supermarket_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_lisp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_lisp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_lisp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_lisp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
)
_generate_srv_lisp(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
)

### Generating Module File
_generate_module_lisp(manage_supermarket
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(manage_supermarket_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(manage_supermarket_generate_messages manage_supermarket_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_lisp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_lisp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_lisp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_lisp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_lisp _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_lisp _manage_supermarket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manage_supermarket_genlisp)
add_dependencies(manage_supermarket_genlisp manage_supermarket_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manage_supermarket_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
)
_generate_srv_nodejs(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
)
_generate_srv_nodejs(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
)
_generate_srv_nodejs(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
)
_generate_srv_nodejs(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
)
_generate_srv_nodejs(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
)

### Generating Module File
_generate_module_nodejs(manage_supermarket
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(manage_supermarket_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(manage_supermarket_generate_messages manage_supermarket_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_nodejs _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_nodejs _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_nodejs _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_nodejs _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_nodejs _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_nodejs _manage_supermarket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manage_supermarket_gennodejs)
add_dependencies(manage_supermarket_gennodejs manage_supermarket_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manage_supermarket_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
)
_generate_srv_py(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
)
_generate_srv_py(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
)
_generate_srv_py(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
)
_generate_srv_py(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
)
_generate_srv_py(manage_supermarket
  "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
)

### Generating Module File
_generate_module_py(manage_supermarket
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(manage_supermarket_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(manage_supermarket_generate_messages manage_supermarket_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_py _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_py _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_py _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_py _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_py _manage_supermarket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv" NAME_WE)
add_dependencies(manage_supermarket_generate_messages_py _manage_supermarket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manage_supermarket_genpy)
add_dependencies(manage_supermarket_genpy manage_supermarket_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manage_supermarket_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manage_supermarket
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(manage_supermarket_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manage_supermarket
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(manage_supermarket_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manage_supermarket
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(manage_supermarket_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manage_supermarket
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(manage_supermarket_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manage_supermarket
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(manage_supermarket_generate_messages_py std_msgs_generate_messages_py)
endif()
