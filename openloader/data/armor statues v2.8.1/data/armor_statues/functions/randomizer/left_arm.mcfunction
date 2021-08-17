# 
# Description:	Randomizes appendage rotation
# Called by:	armor_statues:trigger/random_pose
# Entity @s:	temp armor stand
#
execute store result storage customizable_armor_stands:pose_storage Pose.LeftArm[0] float 0.001 run data get entity @s ArmorItems[3].tag.AttributeModifiers[{ "Name":"left_arm_x" }].Amount 1000
execute store result storage customizable_armor_stands:pose_storage Pose.LeftArm[1] float 0.001 run data get entity @s ArmorItems[3].tag.AttributeModifiers[{ "Name":"left_arm_y" }].Amount 1000
execute store result storage customizable_armor_stands:pose_storage Pose.LeftArm[2] float 0.001 run data get entity @s ArmorItems[3].tag.AttributeModifiers[{ "Name":"left_arm_z" }].Amount 1000