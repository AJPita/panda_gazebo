import rospy
import actionlib

from panda_loihi_msg.msg import detectionAction,detectionGoal

if __name__=='__main__':
    rospy.init_node('client_detection_action')
    client=actionlib.SimpleActionClient('detectionAction',detectionAction)
    client.wait_for_server()
    goal=detectionGoal()
    goal.start=1
    client.send_goal(goal)
    client.wait_for_result()
    print("finish")