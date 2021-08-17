#
# Description:	Mirror armor stand's arms or legs
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Apply bugfix for MC-80975
#
function armor_statues:bugfix
#
# Mirror arms left to right
#
execute if entity @s[scores={as_trigger=131}] store result score @s as_pose run data get entity @s Pose.LeftArm[0] 1000
execute if entity @s[scores={as_trigger=131}] store result entity @s Pose.RightArm[0] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=131}] store result score @s as_pose run data get entity @s Pose.LeftArm[1] -1000
execute if entity @s[scores={as_trigger=131}] store result entity @s Pose.RightArm[1] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=131}] store result score @s as_pose run data get entity @s Pose.LeftArm[2] -1000
execute if entity @s[scores={as_trigger=131}] store result entity @s Pose.RightArm[2] float 0.001 run scoreboard players get @s as_pose
#
# Mirror arms right to left
#
execute if entity @s[scores={as_trigger=132}] store result score @s as_pose run data get entity @s Pose.RightArm[0] 1000
execute if entity @s[scores={as_trigger=132}] store result entity @s Pose.LeftArm[0] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=132}] store result score @s as_pose run data get entity @s Pose.RightArm[1] -1000
execute if entity @s[scores={as_trigger=132}] store result entity @s Pose.LeftArm[1] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=132}] store result score @s as_pose run data get entity @s Pose.RightArm[2] -1000
execute if entity @s[scores={as_trigger=132}] store result entity @s Pose.LeftArm[2] float 0.001 run scoreboard players get @s as_pose
#
# Mirror legs left to right
#
execute if entity @s[scores={as_trigger=133}] store result score @s as_pose run data get entity @s Pose.LeftLeg[0] 1000
execute if entity @s[scores={as_trigger=133}] store result entity @s Pose.RightLeg[0] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=133}] store result score @s as_pose run data get entity @s Pose.LeftLeg[1] -1000
execute if entity @s[scores={as_trigger=133}] store result entity @s Pose.RightLeg[1] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=133}] store result score @s as_pose run data get entity @s Pose.LeftLeg[2] -1000
execute if entity @s[scores={as_trigger=133}] store result entity @s Pose.RightLeg[2] float 0.001 run scoreboard players get @s as_pose
#
# Mirror legs right to left
#
execute if entity @s[scores={as_trigger=134}] store result score @s as_pose run data get entity @s Pose.RightLeg[0] 1000
execute if entity @s[scores={as_trigger=134}] store result entity @s Pose.LeftLeg[0] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=134}] store result score @s as_pose run data get entity @s Pose.RightLeg[1] -1000
execute if entity @s[scores={as_trigger=134}] store result entity @s Pose.LeftLeg[1] float 0.001 run scoreboard players get @s as_pose
execute if entity @s[scores={as_trigger=134}] store result score @s as_pose run data get entity @s Pose.RightLeg[2] -1000
execute if entity @s[scores={as_trigger=134}] store result entity @s Pose.LeftLeg[2] float 0.001 run scoreboard players get @s as_pose
#
# Tag the armor stand as modified
#
tag @s add as_modified
