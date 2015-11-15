//  main.cpp
//  ORB_SLAM_OSX
//
//  Created by Xin Sun on 11/3/15.
//  Copyright © 2015 Xin Sun. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <boost/thread.hpp>
#include <opencv2/core/core.hpp>
#include "ORB_SLAM/Tracking.hpp"
#include "ORB_SLAM/Map.hpp"
#include "ORB_SLAM/LocalMapping.hpp"
#include "ORB_SLAM/LoopClosing.hpp"
#include "ORB_SLAM/KeyFrameDatabase.hpp"
#include "ORB_SLAM/ORBVocabulary.hpp"
#include "ORB_SLAM/Converter.hpp"
#include "GUI/SXViewer.hpp"
#include <thread>
#include <chrono>

using namespace std;

void streamData(ORB_SLAM::Tracking *tracker, SXViewer *viewer) {
    
    //const char *fileMask = "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Data/RTB_room_seq1/%04d.jpg";
    const char *fileMask = "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Data/RTB_room_seq2/%04d.jpg";
//    // for seq1
//    int fileCount = 931;
    // for seq2
    int fileCount = 1364;
    char name[2000];
    
    cv::namedWindow("Source Image", cv::WINDOW_AUTOSIZE);
    for (int i = 0; i < fileCount; i++) {
        sprintf(name, fileMask, i);
        cv::Mat temp = cv::imread(name);
        cv::imshow("Source Image", temp);
        tracker->GrabImage(temp);
        this_thread::sleep_for(chrono::milliseconds(120));
        switch(tracker->mState) {
            case -1:
                cout << "SYSTEM_NOT_READ" << endl;
                break;
            case 0:
                cout << "NO_IMAGES_YET" << endl;
                break;
            case 1:
                cout << "NOT_INITIALIZED" << endl;
                break;
            case 2:
                cout << "INITIALIZING" << endl;
                break;
            case 3: {
                cout << "WORKING" << endl;
                cv::Mat R = tracker->GetPose_R();
                cv::Mat T = tracker->GetPose_T();
                cv::Mat center = -R.t()*T;
                viewer->Add3DNode(-center.at<float>(0), center.at<float>(1), center.at<float>(2));
                break;
            }
            case 4:
                cout << "LOST" << endl;
                break;
        }
    }
}

int main(int argc, char **argv)
{
    bool loadVoc = true;
    const char *ORBvoc = "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Data/ORBvoc.txt";
    const char *settings = "/Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Data/Settings.yaml";
    
    ORB_SLAM::ORBVocabulary *_vocabulary = new ORB_SLAM::ORBVocabulary();
    
    if (loadVoc) {
        cout << "Loading Voc" << endl;
        if (_vocabulary->loadFromTextFile(ORBvoc))
            cout << "Vocabulary loaded" << endl;
        else {
            cout << "Vocabulary not loaded, terminating...." << endl;
            return 1;
        }
    }
    
    ORB_SLAM::KeyFrameDatabase *_database = new ORB_SLAM::KeyFrameDatabase(*_vocabulary);
    ORB_SLAM::Map *_world = new ORB_SLAM::Map();
    
    ORB_SLAM::Tracking *_tracker = new ORB_SLAM::Tracking(_vocabulary, _world, settings);
    boost::thread trackingThread(&ORB_SLAM::Tracking::Run, _tracker);
    ORB_SLAM::LocalMapping *_localMapping = new ORB_SLAM::LocalMapping(_world);
    boost::thread localMappingThread(&ORB_SLAM::LocalMapping::Run, _localMapping);
    ORB_SLAM::LoopClosing *_loopCloser = new ORB_SLAM::LoopClosing(_world, _database, _vocabulary);
    boost::thread loopClosingThread(&ORB_SLAM::LoopClosing::Run, _loopCloser);
    
    _tracker->SetKeyFrameDatabase(_database);
    _tracker->SetLocalMapper(_localMapping);
    _tracker->SetLoopClosing(_loopCloser);
    
    _localMapping ->SetTracker(_tracker);
    _localMapping->SetLoopCloser(_loopCloser);
    
    _loopCloser->SetTracker(_tracker);
    _loopCloser->SetLocalMapper(_localMapping);
    
    
    // Stream Data from file
    SXViewer *viewer = new SXViewer(argc, argv);
    thread t = thread(streamData, _tracker, viewer);
    t.detach();
    viewer->Run();
    
    return 0;
}
