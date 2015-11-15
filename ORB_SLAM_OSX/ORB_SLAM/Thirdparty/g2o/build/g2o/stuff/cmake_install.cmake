# Install script for directory: /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff

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
   "/usr/local/lib/libg2o_stuff.dylib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_stuff.dylib")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libg2o_stuff.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libg2o_stuff.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "libg2o_stuff.dylib"
      "$ENV{DESTDIR}/usr/local/lib/libg2o_stuff.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libg2o_stuff.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/g2o/stuff/color_macros.h;/usr/local/include/g2o/stuff/command_args.h;/usr/local/include/g2o/stuff/filesys_tools.h;/usr/local/include/g2o/stuff/g2o_stuff_api.h;/usr/local/include/g2o/stuff/macros.h;/usr/local/include/g2o/stuff/misc.h;/usr/local/include/g2o/stuff/os_specific.h;/usr/local/include/g2o/stuff/property.h;/usr/local/include/g2o/stuff/sampler.h;/usr/local/include/g2o/stuff/scoped_pointer.h;/usr/local/include/g2o/stuff/sparse_helper.h;/usr/local/include/g2o/stuff/string_tools.h;/usr/local/include/g2o/stuff/tictoc.h;/usr/local/include/g2o/stuff/timeutil.h;/usr/local/include/g2o/stuff/unscented.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/g2o/stuff" TYPE FILE FILES
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/color_macros.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/command_args.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/filesys_tools.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/g2o_stuff_api.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/macros.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/misc.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/os_specific.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/property.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/sampler.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/scoped_pointer.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/sparse_helper.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/string_tools.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/tictoc.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/timeutil.h"
    "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/stuff/unscented.h"
    )
endif()

