#!/usr/bin/python3
import roslib
import rospy
import tf
from geometry_msgs.msg import Pose
import tf.transformations
import time
from panda_loihi_msg.msg import DetectedObjectsStamped
def handle(msg):
    data=msg.detected_objects
    print(data)
    br=tf.TransformBroadcaster()
    br2=tf.TransformBroadcaster()
    bc=tf.TransformBroadcaster()
    #bc.sendTransform((0.6, 0, 1.2 ),tf.transformations.quaternion_from_euler(0,3.14,1.57),rospy.Time.now(),"/camera_link","/world")
    br.sendTransform((data[1].y_world,data[1].x_world,data[1].z_world),tf.transformations.quaternion_from_euler(0,3.14,0),rospy.Time.now(),"/chip1","/panda_link10")
    br2.sendTransform((data[0].y_world,data[0].x_world,data[0].z_world),tf.transformations.quaternion_from_euler(0,3.14,0),rospy.Time.now(),"/chip2","/panda_link10")
    #br.sendTransform((data[1].x_world,data[1].y_world,data[1].z_world),tf.transformations.quaternion_from_euler(0,0,0),rospy.Time.now(),"/chip1","/world")
    #br2.sendTransform((data[0].x_world,data[0].y_world,data[0].z_world),tf.transformations.quaternion_from_euler(0,0,0),rospy.Time.now(),"/chip2","/world")
    #br2.sendTransform((data[0].x_world,data[0].y_world,data[0].z_world),tf.transformations.quaternion_from_euler(0,0,2),rospy.Time.now(),"/chip2","/world")
    
if __name__=="__main__":
    rospy.init_node("tf_test")
    
    rate=rospy.Rate(10)
  
    sub=rospy.Subscriber('/object_detection2', DetectedObjectsStamped,handle)
    rospy.spin()



    

