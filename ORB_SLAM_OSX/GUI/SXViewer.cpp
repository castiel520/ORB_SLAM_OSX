//
//  SXViewer.cpp
//  OpenGL
//
//  Created by Xin Sun on 11/4/15.
//  Copyright © 2015 Xin Sun. All rights reserved.
//

#include "SXViewer.hpp"
#include <cmath>
#include <stdlib.h>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

std::vector<SXVec3f> SXViewer::nodes;
float SXViewer::angleX = 0;
float SXViewer::angleY = 0;
float SXViewer::angleZ = 0;
float SXViewer::rotDeltaX = 0;
float SXViewer::rotDeltaY = 0;
float SXViewer::rotDeltaZ = 0;

float SXViewer::transX = 0;
float SXViewer::transY = 0;
float SXViewer::transZ = -4;
float SXViewer::transDeltaX = 0;
float SXViewer::transDeltaY = 0;
float SXViewer::transDeltaZ = 0;

int SXViewer::mouseLeftDownX = -1;
int SXViewer::mouseLeftDownY = -1;
int SXViewer::mouseRightDownX = -1;
int SXViewer::mouseRightDownY = -1;

SXViewer::SXViewer(int argc, char **argv, int anchor_X, int anchor_Y, int width, int height) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
    glutInitWindowPosition(anchor_X, anchor_Y);
    glutInitWindowSize(width, height);
    glutCreateWindow("SLAM");
    
    glutIdleFunc(render);
    glutDisplayFunc(render);
    glutReshapeFunc(changeSize);
    
    glutKeyboardFunc(processNormalKeys);
    glutSpecialFunc(pressKey);
    glutSpecialUpFunc(releaseKey);
    glutIgnoreKeyRepeat(1);
    
    glutMouseFunc(mouseKey);
    glutMotionFunc(mouseMove);
    
    glEnable(GL_DEPTH_TEST);
}


void SXViewer::Add3DNode(float x, float y, float z) {
    nodes.push_back(SXVec3f(x, y, z));
}

void SXViewer::Run() {
    glutMainLoop();
}

// GLUT callbacks
void SXViewer::render() {
    
    transZ += transDeltaZ;
    
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();
    
    // Need fine tune
    gluLookAt(transX+transDeltaX, transY+transDeltaY, transZ, transX+transDeltaX, transY+transDeltaY, -1, 0, 1, 0);
    
    // Draw lines between node
    glColor3f(1, 1, 1);
    
    glPushMatrix();
    glRotatef(angleY+rotDeltaY, 0, 1, 0);
    glRotatef(angleX+rotDeltaX, 1, 0, 0);
    glBegin(GL_LINE_STRIP);
    for (int i = 0; i < nodes.size(); i++) {
        const SXVec3f &node = nodes[i];
        glVertex3f(node.x, node.y, node.z);
    }
    glEnd();
    glPopMatrix();
    
    // Draw the actual node
    glColor3f(1, 0, 0);
    for (int i = 0; i < nodes.size(); i++) {
        const SXVec3f &node = nodes[i];
        glPushMatrix();
        glRotatef(angleY+rotDeltaY, 0, 1, 0);
        glRotatef(angleX+rotDeltaX, 1, 0, 0);
        glTranslatef(node.x, node.y, node.z);
        glutSolidSphere(0.001, 10, 10);
        glPopMatrix();
    }
    
    glutSwapBuffers();
}

void SXViewer::pressKey(int key, int x, int y) {
    switch (key) {
        case GLUT_KEY_UP:
            transDeltaZ = 0.05;
            break;
        case GLUT_KEY_DOWN:
            transDeltaZ = -0.05;
            break;
    }
}

void SXViewer::releaseKey(int key, int x, int y) {
    switch (key) {
        case GLUT_KEY_UP:
        case GLUT_KEY_DOWN:
            transDeltaZ = 0;
            break;
    }
    
}

void SXViewer::mouseKey(int button ,int state, int x, int y) {
    if (button == GLUT_LEFT_BUTTON) {
        if (state == GLUT_UP) {
            mouseLeftDownX = -1;
            mouseLeftDownY = -1;
            angleX += rotDeltaX;
            angleY += rotDeltaY;
            rotDeltaX = 0;
            rotDeltaY = 0;
        } else {
            mouseLeftDownX = x;
            mouseLeftDownY = y;
        }
    } else if (button == GLUT_RIGHT_BUTTON) {
        if (state == GLUT_UP) {
            mouseRightDownX = -1;
            mouseRightDownY = -1;
            transX += transDeltaX;
            transY += transDeltaY;
            transDeltaX = 0;
            transDeltaY = 0;
        } else {
            mouseRightDownX = x;
            mouseRightDownY = y;
        }
    }
}

void SXViewer::mouseMove(int x, int y) {
    if (mouseLeftDownX >= 0 && mouseLeftDownY >= 0) {
        rotDeltaY = (x-mouseLeftDownX)*0.1;
        rotDeltaX = -(y-mouseLeftDownY)*0.1;
    } else if (mouseRightDownX >= 0 && mouseRightDownY >= 0) {
        transDeltaX = (x-mouseRightDownX)*0.001*std::abs(transZ);
        transDeltaY = (y-mouseRightDownY)*0.001*std::abs(transZ);
    }
}

void SXViewer::processNormalKeys(unsigned char key, int x, int y){
    if (key == 27)
        exit(0);
}

void SXViewer::changeSize(int w, int h) {
    if (h == 0)
        h = 1;
    float ratio = 1.0*w/h;
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glViewport(0, 0, w, h);
    gluPerspective(45, ratio, 1, 1000);
    glMatrixMode(GL_MODELVIEW);
}

#pragma GCC diagnostic pop