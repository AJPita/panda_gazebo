#!/usr/bin/python3
import rospy
import actionlib
from franka_gripper.msg import MoveActionGoal,MoveAction,GraspActionGoal,GraspAction 
from franka_gripper.msg import MoveGoal,GraspGoal

import roslib
import rospy
import tf

import time

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
import time


def pre_move():
    listener=tf.TransformListener()   
    moveit_commander.roscpp_initialize(sys.argv)

  
    robot = moveit_commander.RobotCommander()
    scene = moveit_commander.PlanningSceneInterface()
    group_name = "panda_arm"
    move_group = moveit_commander.MoveGroupCommander(group_name)
    #time.sleep(2)
    listener.waitForTransform('/world','/chip1',rospy.Time(),rospy.Duration(4.0))
    listener.waitForTransform('/world','/chip2',rospy.Time(),rospy.Duration(4.0))
    #while not rospy.is_shutdown():
    n=2
    #trans=[]
    #for x in range(n):
    try:
        #chip_n='/chip'+str(x+1)
        #listener.waitForTransform('/world',chip_n,rospy.Time(),rospy.Duration(4.0))
        now=rospy.Time.now()
        
        listener.waitForTransform('/world','/chip1',now,rospy.Duration(4.0))
        (trans1,rot)=listener.lookupTransform('/world','/chip1',now)
        listener.waitForTransform('/world','/chip2',now,rospy.Duration(4.0))
        (trans2,rot2)=listener.lookupTransform('/world','/chip2',now)
        #trans.append(transd)
    except (tf.LookupException,tf.ConnectivityException,tf.ExtrapolationException):
        print("errror")
            #continue

    waypoints = []
    wpose = move_group.get_current_pose().pose
    scale=1
    wpose.position.x =trans1[0]
    wpose.position.y =trans1[1]
    wpose.position.z =trans1[2]+0.12
    waypoints.append(copy.deepcopy(wpose))
   
    wpose.position.z = wpose.position.z +0.35
    waypoints.append(copy.deepcopy(wpose))
    print("moving to desired position")
    print(wpose)
   
    wpose.position.x =trans2[0] # Third move sideways (y)
    wpose.position.y =trans2[1]-0.012 
    wpose.position.z =trans2[2]+0.12
    waypoints.append(copy.deepcopy(wpose))
   
    print(waypoints)
    #init_pose()

  
    

    # We want the Cartesian path to be interpolated at a resolution of 1 cm
    # which is why we will specify 0.01 as the eef_step in Cartesian
    # translation.  We will disable the jump threshold by setting it to 0.0,
    # ignoring the check for infeasible jumps in joint space, which is sufficient
    # for this tutorial.
    (plan, fraction) = move_group.compute_cartesian_path(
                                    waypoints,   # waypoints to follow
                                    0.01,        # eef_step
                                    0.0)         # jump_threshold

    # Note: We are just planning, not asking move_group to actually move the robot yet:
    move_group.execute(plan, wait=True)


def pre_pick():
    client.wait_for_server()
    goal=MoveActionGoal()
    g=MoveGoal()
    g.width=0.08
    g.speed=0.1
    goal=g
    client.send_goal(goal)
    client.wait_for_result()

def pick():
    client2.wait_for_server()
   
    goal2=GraspActionGoal()
    
    gr=GraspGoal()
   
    gr.width,=0.03,
    gr.epsilon.inner=0.005
    gr.epsilon.outer= 0.005
    gr.speed=0.1
    gr.force=5.0
    print(gr)
    
    goal2=gr
    
    client2.send_goal(goal2)
    client2.wait_for_result()



if __name__=='__main__':
    rospy.init_node('pick')
    client=actionlib.SimpleActionClient('/franka_gripper/move',MoveAction)
    client2=actionlib.SimpleActionClient('/franka_gripper/move',MoveAction)
   
    pre_move()
    pre_pick()
    pick()


#rostopic pub --once /franka_gripper/move/goal franka_gripper/MoveActionGoal "goal: { width: 0.08, speed: 0.1 }"
#rostopic pub --once /franka_gripper/grasp/goal franka_gripper/GraspActionGoal \ "goal: { width: 0.03, epsilon:{ inner: 0.005, outer: 0.005 }, speed: 0.1, force: 5.0}"