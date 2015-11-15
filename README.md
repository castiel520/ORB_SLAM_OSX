#ORB_SLAM_OSX

This is OSX port of [ORB_SLAM](https://github.com/raulmur/ORB_SLAM) with ROS dependencies removed. Image input relies on OpenCV and visualization replies on OpenGL.

Before building, you should have Boost, OpenCV installed in /local/usr/(include and libs). If you installed those dependencies with MacPort or homebrew, change search path in build settings. In addition, include Eigen path in 'header search path'.


Please specify fileMask in streamData method in main.cpp pointing to your data.

