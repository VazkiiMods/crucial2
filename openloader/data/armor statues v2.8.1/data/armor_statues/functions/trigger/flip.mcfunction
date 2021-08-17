#
# Description:	Flip armor stand's pose left to right
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Apply bugfix for MC-80975
#
function armor_statues:bugfix
#
# Arms
#
execute store result score #as_temp as_pose run data get entity @s Pose.RightArm[0] 1000
execute store result score @s as_pose run data get entity @s Pose.LeftArm[0] 1000
execute store result entity @s Pose.RightArm[0] float 0.001 run scoreboard players get @s as_pose
execute store result entity @s Pose.LeftArm[0] float 0.001 run scoreboard players get #as_temp as_pose
#
execute store result score #as_temp as_pose run data get entity @s Pose.RightArm[1] -1000
execute store result score @s as_pose run data get entity @s Pose.LeftArm[1] -1000
execute store result entity @s Pose.RightArm[1] float 0.001 run scoreboard players get @s as_pose
execute store result entity @s Pose.LeftArm[1] float 0.001 run scoreboard players get #as_temp as_pose
#
execute store result score #as_temp as_pose run data get entity @s Pose.RightArm[2] -1000
execute store result score @s as_pose run data get entity @s Pose.LeftArm[2] -1000
execute store result entity @s Pose.RightArm[2] float 0.001 run scoreboard players get @s as_pose
execute store result entity @s Pose.LeftArm[2] float 0.001 run scoreboard players get #as_temp as_pose
#
# Legs
#
execute store result score #as_temp as_pose run data get entity @s Pose.RightLeg[0] 1000
execute store result score @s as_pose run data get entity @s Pose.LeftLeg[0] 1000
execute store result entity @s Pose.RightLeg[0] float 0.001 run scoreboard players get @s as_pose
execute store result entity @s Pose.LeftLeg[0] float 0.001 run scoreboard players get #as_temp as_pose
#
execute store result score #as_temp as_pose run data get entity @s Pose.RightLeg[1] -1000
execute store result score @s as_pose run data get entity @s Pose.LeftLeg[1] -1000
execute store result entity @s Pose.RightLeg[1] float 0.001 run scoreboard players get @s as_pose
execute store result entity @s Pose.LeftLeg[1] float 0.001 run scoreboard players get #as_temp as_pose
#
execute store result score #as_temp as_pose run data get entity @s Pose.RightLeg[2] -1000
execute store result score @s as_pose run data get entity @s Pose.LeftLeg[2] -1000
execute store result entity @s Pose.RightLeg[2] float 0.001 run scoreboard players get @s as_pose
execute store result entity @s Pose.LeftLeg[2] float 0.001 run scoreboard players get #as_temp as_pose
#
# Head
#
execute store result score @s as_pose run data get entity @s Pose.Head[1] -1000
execute store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s as_pose
execute store result score @s as_pose run data get entity @s Pose.Head[2] -1000
execute store result entity @s Pose.Head[2] float 0.001 run scoreboard players get @s as_pose
#
# Body
#
execute store result score @s as_pose run data get entity @s Pose.Body[1] -1000
execute store result entity @s Pose.Body[1] float 0.001 run scoreboard players get @s as_pose
execute store result score @s as_pose run data get entity @s Pose.Body[2] -1000
execute store result entity @s Pose.Body[2] float 0.001 run scoreboard players get @s as_pose
#
# Clear temporary dummy player
#
scoreboard players reset #as_temp as_pose
#
# Tag the armor stand as modified
#
tag @s add as_modified
