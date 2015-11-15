//
//  SXViewer.hpp
//  OpenGL
//
//  Created by Xin Sun on 11/4/15.
//  Copyright © 2015 Xin Sun. All rights reserved.
//

#ifndef SXViewer_hpp
#define SXViewer_hpp

#include <vector>
#include <GLUT/glut.h>
#include "SXVec3f.hpp"

class SXViewer {
public:
    SXViewer(int argc, char **argv, int anchor_X = 100, int anchor_Y = 100, int width = 600, int height = 600);
    ~SXViewer(){};
    
    void Add3DNode(float x, float y, float z);
    void Run();
   
private:
    static std::vector<SXVec3f> nodes;
    
    // GLUT callbacks
    static void pressKey(int key, int x, int y);
    static void releaseKey(int key, int x, int y);
    static void mouseKey(int button ,int state, int x, int y);
    static void mouseMove(int x, int y);
    static void render();
    static void processNormalKeys(unsigned char key, int x, int y);
    static void changeSize(int w, int h);
    
    // state variable for camera
    static float angleX;
    static float angleY;
    static float angleZ;
    static float rotDeltaX;
    static float rotDeltaY;
    static float rotDeltaZ;
    static float scale;
    
    static float transX;
    static float transY;
    static float transZ;
    static float transDeltaX;
    static float transDeltaY;
    static float transDeltaZ;
    
    // state variable for mouse
    static int mouseLeftDownX;
    static int mouseLeftDownY;
    static int mouseRightDownX;
    static int mouseRightDownY;
};

#endif /* SXViewer_hpp */
