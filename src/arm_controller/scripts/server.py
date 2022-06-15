#!/usr/bin/env python3


import rospy
import time
from arm_controller.srv import *

NAMESPACE = "/arm"
# SERVICE TOPIC
SERVICE_CMD = NAMESPACE + "/arm_cmd"
SERVICE_STOP = NAMESPACE + "/x_stop"

def clientVision(a):

    rate = rospy.Rate(1)
    try:        
        global visionResp

        rospy.wait_for_service('Vision')

        service = rospy.ServiceProxy(
            'Vision', Vision)
        visionResp = service(a)

        rate.sleep()
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)


def clientArm(a, b, c, d, e, f):
    rate = rospy.Rate(1)
    global armResp
    try:
        rospy.wait_for_service(SERVICE_CMD)

        service = rospy.ServiceProxy(
            SERVICE_CMD, Arm)
        armResp = service(a, b, c, d, e, f)
        rate.sleep()
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)


def clientNav(a):
    rate = rospy.Rate(1)
    global navResp
    try:
        rospy.wait_for_service('Nav')

        service = rospy.ServiceProxy(
            'Nav', Nav)
        navResp = service(a)
        rate.sleep()
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)


def clientHMI(a):
    rate = rospy.Rate(1)
    global hmiResp
    try:
        rospy.wait_for_service('HMI')

        service = rospy.ServiceProxy(
            'HMI', HMI)
        hmiResp = service(a, b, c)
        rate.sleep()
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)


def clientStop():
    rate = rospy.Rate(1)
    global stopResp
    try:
        rospy.wait_for_service(SERVICE_STOP)

        service = rospy.ServiceProxy(
            SERVICE_STOP, Stop)
        stopResp = service()
        rate.sleep()
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)

def clientButton():
    rate = rospy.Rate(1)
    global buttonResp
    try:
        rospy.wait_for_service('buttonStatus')

        service = rospy.ServiceProxy(
            'buttonStatus', buttonStatus)
        buttonResp = service(True)
        rate.sleep()
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)        


if __name__ == "__main__":
    rospy.init_node("Server")
    global visionResp, buttonResp, stopResp, hmiResp, navResp, armResp

    clientNav(True)
    clientVision(True)
    if visionResp.z == True:
        clientArm(0, visionResp.x, visionResp.y , 300, 200, False)
        timeY = visionResp.x*420
        timeZ = visionResp.y*160
        if timeY >= timeZ:
            time.sleep(timeY)
        elif timeZ >= timeY:
            time.sleep(timeZ)
        clientArm(0, 0, 0 , 300, 200, True)
        time.sleep(15)
        clientArm(0, 0, 0 , 300, 200, False)
        time.sleep(2)
        clientArm(0, -visionResp.x, -visionResp.y, 300, 200, False)
   
    clientArm(0,0.05,0,300,200,False)

    # clientVision(True)
    # if visionResp.z == True:
    #     clientArm(0, visionResp.x, visionResp.y , 300, 120, False)
    #     time.sleep(26)
    #     clientArm(0, 0, 0 , 300, 120, True)
