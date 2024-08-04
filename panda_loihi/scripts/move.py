import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_tutorial', anonymous=True)
robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
group_name = "panda_arm"
move_group = moveit_commander.MoveGroupCommander(group_name)
waypoints = []
scale=1
wpose = move_group.get_current_pose().pose
print(wpose)
#wpose.position.z -= scale * 0.1  # First move up (z)
#wpose.position.y += scale * 0.2  # and sideways (y)
#waypoints.append(copy.deepcopy(wpose))

#wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
#waypoints.append(copy.deepcopy(wpose))

#wpose.position.y -= scale * 0.1  # Third move sideways (y)
#waypoints.append(copy.deepcopy(wpose))

# We want the Cartesian path to be interpolated at a resolution of 1 cm
# which is why we will specify 0.01 as the eef_step in Cartesian
# translation.  We will disable the jump threshold by setting it to 0.0,
# ignoring the check for infeasible jumps in joint space, which is sufficient
# for this tutorial.

"""
wpose.position.x=0.30  
wpose.position.y=0.32
wpose.position.z=0.515

waypoints.append(copy.deepcopy(wpose))
wpose.position.x=0.60  
wpose.position.y=0.22
wpose.position.z=0.315
waypoints.append(copy.deepcopy(wpose))

wpose.position.x=0.30  
wpose.position.y=0.32
wpose.position.z=0.515
"""
#wpose.orientation.x=+0.1
#waypoints.append(copy.deepcopy(wpose))
wpose.position.x=0.5
wpose.position.y=0.01
wpose.position.z= 0.75


#wpose.orientation.y=0
#wpose.orientation.z=0
#wpose.orientation.w=1
waypoints.append(copy.deepcopy(wpose))
(plan, fraction) = move_group.compute_cartesian_path(
                                   waypoints,   # waypoints to follow
                                   0.01,        # eef_step
                                   0.0)         # jump_threshold

# Note: We are just planning, not asking move_group to actually move the robot yet:
move_group.execute(plan, wait=True)

wpose = move_group.get_current_pose().pose
print(wpose)