# Install script for directory: /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/solvers/cholmod

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
   "/usr/local/lib/libg2o_solver_cholmod.dylib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_solver_cholmod.dylib")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libg2o_solver_cholmod.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libg2o_solver_cholmod.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "libg2o_solver_cholmod.dylib"
      -change "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_core.dylib" "libg2o_core.dylib"
      -change "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/lib/libg2o_stuff.dylib" "libg2o_stuff.dylib"
      "$ENV{DESTDIR}/usr/local/lib/libg2o_solver_cholmod.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libg2o_solver_cholmod.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/g2o/solvers/cholmod/linear_solver_cholmod.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/g2o/solvers/cholmod" TYPE FILE FILES "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/solvers/cholmod/linear_solver_cholmod.h")
endif()

