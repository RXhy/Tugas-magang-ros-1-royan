# Install script for directory: /home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manage_supermarket/srv" TYPE FILE FILES
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/add_product.srv"
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/restock.srv"
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/display.srv"
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/editharga.srv"
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/delete_product.srv"
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/srv/jual_product.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manage_supermarket/cmake" TYPE FILE FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/build/manage_supermarket/catkin_generated/installspace/manage_supermarket-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/devel/include/manage_supermarket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/devel/share/roseus/ros/manage_supermarket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/devel/share/common-lisp/ros/manage_supermarket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/devel/share/gennodejs/ros/manage_supermarket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/devel/lib/python3/dist-packages/manage_supermarket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/devel/lib/python3/dist-packages/manage_supermarket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/build/manage_supermarket/catkin_generated/installspace/manage_supermarket.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manage_supermarket/cmake" TYPE FILE FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/build/manage_supermarket/catkin_generated/installspace/manage_supermarket-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manage_supermarket/cmake" TYPE FILE FILES
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/build/manage_supermarket/catkin_generated/installspace/manage_supermarketConfig.cmake"
    "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/build/manage_supermarket/catkin_generated/installspace/manage_supermarketConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manage_supermarket" TYPE FILE FILES "/home/roy/Documents/ROSCORE/tugas-magang-ros-1-royan/src/manage_supermarket/package.xml")
endif()

