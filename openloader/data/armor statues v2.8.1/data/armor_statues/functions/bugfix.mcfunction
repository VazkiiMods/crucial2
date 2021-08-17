#
# Description:	This is a temporary (?) workaround for bug MC-80975
# Called by:	armor_statues:trigger
# Entity @s:	armor_stand
#
# Pose data is not stored for parts of the armor stand that are in the "default" positions. This causes the execute store entity
# and data get entity commands to fail.
#
# This function checks for the presence of each parts' pose data and updates it with tweaked default values if not present
#
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}
execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[0.0f,0.001f,0.0f]}}
execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[-10.0f,0.001f,-10.0f]}}
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[-15.0f,0.001f,10.0f]}}
execute unless data entity @s Pose.LeftLeg run data merge entity @s {Pose:{LeftLeg:[-1.0f,0.001f,-1.0f]}}
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[1.0f,0.001f,1.0f]}}
