# Install script for directory: /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/types/sim3

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libg2o_types_sim3.dylib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_types_sim3.dylib")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libg2o_types_sim3.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libg2o_types_sim3.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "libg2o_types_sim3.dylib"
      -change "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_core.dylib" "libg2o_core.dylib"
      -change "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_stuff.dylib" "libg2o_stuff.dylib"
      -change "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_types_sba.dylib" "libg2o_types_sba.dylib"
      -change "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_types_slam3d.dylib" "libg2o_types_slam3d.dylib"
      "$ENV{DESTDIR}/usr/local/lib/libg2o_types_sim3.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libg2o_types_sim3.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/g2o/types/sim3/sim3.h;/usr/local/include/g2o/types/sim3/types_seven_dof_expmap.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/g2o/types/sim3" TYPE FILE FILES
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/types/sim3/sim3.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/types/sim3/types_seven_dof_expmap.h"
    )
endif()

