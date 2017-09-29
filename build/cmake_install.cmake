# Install script for directory: /home/relaybot/gpsbot_ws_sweep/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/relaybot/gpsbot_ws_sweep/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/relaybot/gpsbot_ws_sweep/install/_setup_util.py")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/relaybot/gpsbot_ws_sweep/install" TYPE PROGRAM FILES "/home/relaybot/gpsbot_ws_sweep/build/catkin_generated/installspace/_setup_util.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/relaybot/gpsbot_ws_sweep/install/env.sh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/relaybot/gpsbot_ws_sweep/install" TYPE PROGRAM FILES "/home/relaybot/gpsbot_ws_sweep/build/catkin_generated/installspace/env.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/relaybot/gpsbot_ws_sweep/install/setup.bash")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/relaybot/gpsbot_ws_sweep/install" TYPE FILE FILES "/home/relaybot/gpsbot_ws_sweep/build/catkin_generated/installspace/setup.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/relaybot/gpsbot_ws_sweep/install/setup.sh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/relaybot/gpsbot_ws_sweep/install" TYPE FILE FILES "/home/relaybot/gpsbot_ws_sweep/build/catkin_generated/installspace/setup.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/relaybot/gpsbot_ws_sweep/install/setup.zsh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/relaybot/gpsbot_ws_sweep/install" TYPE FILE FILES "/home/relaybot/gpsbot_ws_sweep/build/catkin_generated/installspace/setup.zsh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/relaybot/gpsbot_ws_sweep/install/.rosinstall")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/relaybot/gpsbot_ws_sweep/install" TYPE FILE FILES "/home/relaybot/gpsbot_ws_sweep/build/catkin_generated/installspace/.rosinstall")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/gtest/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/navigation/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/openslam_gmapping/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/ros_arduino_bridge/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/ros_arduino_firmware/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/ros_arduino_python/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/slam_gmapping/slam_gmapping/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/move_base_msgs/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/ros_arduino_msgs/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/teb_local_planner_tutorials/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/turtlebot_apps/turtlebot_apps/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/turtlebot_apps/turtlebot_rapps/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/gpsbot_nav/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/gpsbot_rviz/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1_bringup/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1_vision/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rosauth/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1_dynamixels/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/sick_tim/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1_speech/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/fake_localization/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/slam_gmapping/gmapping/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/map_server/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/amcl/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1_apps/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1_nav/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/robot_pose_ekf/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/turtlebot_apps/turtlebot_actions/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/turtlebot_apps/turtlebot_calibration/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/turtlebot_apps/turtlebot_follower/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/turtlebot_apps/turtlebot_navigation/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_course/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/ros_arduino_bridge/gpsbot_description/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/rbx1/rbx1_description/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/urdf_tutorial/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/voxel_grid/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/costmap_2d/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/nav_core/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/base_local_planner/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/carrot_planner/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/dwa_local_planner/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/move_slow_and_clear/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/navfn/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/global_planner/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/rotate_recovery/cmake_install.cmake")
  INCLUDE("/home/relaybot/gpsbot_ws_sweep/build/navigation/move_base/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/relaybot/gpsbot_ws_sweep/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/relaybot/gpsbot_ws_sweep/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)