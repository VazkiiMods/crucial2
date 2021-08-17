#
# Description:	Adjust armor stand pose
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Apply bugfix for MC-80975
#
function armor_statues:bugfix
#
# Get angle step from player and scale by 1000
#
scoreboard players operation @s as_angle = @p as_angle
scoreboard players set #as_temp as_angle 1000
scoreboard players operation @s as_angle *= #as_temp as_angle
scoreboard players reset #as_temp as_angle
#
# Head: 60-65
#
execute if entity @s[scores={as_trigger=60..61}] store result score @s as_pose run data get entity @s Pose.Head[0] 1000
execute if entity @s[scores={as_trigger=60}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=61}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=60..61}] store result entity @s Pose.Head[0] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=62..63}] store result score @s as_pose run data get entity @s Pose.Head[1] 1000
execute if entity @s[scores={as_trigger=62}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=63}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=62..63}] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=64..65}] store result score @s as_pose run data get entity @s Pose.Head[2] 1000
execute if entity @s[scores={as_trigger=64}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=65}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=64..65}] store result entity @s Pose.Head[2] float 0.001 run scoreboard players get @s as_pose
#
# Body: 66-71
#
execute if entity @s[scores={as_trigger=66..67}] store result score @s as_pose run data get entity @s Pose.Body[0] 1000
execute if entity @s[scores={as_trigger=66}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=67}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=66..67}] store result entity @s Pose.Body[0] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=68..69}] store result score @s as_pose run data get entity @s Pose.Body[1] 1000
execute if entity @s[scores={as_trigger=68}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=69}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=68..69}] store result entity @s Pose.Body[1] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=70..71}] store result score @s as_pose run data get entity @s Pose.Body[2] 1000
execute if entity @s[scores={as_trigger=70}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=71}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=70..71}] store result entity @s Pose.Body[2] float 0.001 run scoreboard players get @s as_pose
#
# Right Arm: 72-77
#
execute if entity @s[scores={as_trigger=72..73}] store result score @s as_pose run data get entity @s Pose.RightArm[0] 1000
execute if entity @s[scores={as_trigger=72}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=73}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=72..73}] store result entity @s Pose.RightArm[0] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=74..75}] store result score @s as_pose run data get entity @s Pose.RightArm[1] 1000
execute if entity @s[scores={as_trigger=74}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=75}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=74..75}] store result entity @s Pose.RightArm[1] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=76..77}] store result score @s as_pose run data get entity @s Pose.RightArm[2] 1000
execute if entity @s[scores={as_trigger=76}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=77}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=76..77}] store result entity @s Pose.RightArm[2] float 0.001 run scoreboard players get @s as_pose
#
# Left Arm: 78-83
#
execute if entity @s[scores={as_trigger=78..79}] store result score @s as_pose run data get entity @s Pose.LeftArm[0] 1000
execute if entity @s[scores={as_trigger=78}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=79}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=78..79}] store result entity @s Pose.LeftArm[0] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=80..81}] store result score @s as_pose run data get entity @s Pose.LeftArm[1] 1000
execute if entity @s[scores={as_trigger=80}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=81}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=80..81}] store result entity @s Pose.LeftArm[1] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=82..83}] store result score @s as_pose run data get entity @s Pose.LeftArm[2] 1000
execute if entity @s[scores={as_trigger=82}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=83}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=82..83}] store result entity @s Pose.LeftArm[2] float 0.001 run scoreboard players get @s as_pose
#
# Right Leg: 84-89
#
execute if entity @s[scores={as_trigger=84..85}] store result score @s as_pose run data get entity @s Pose.RightLeg[0] 1000
execute if entity @s[scores={as_trigger=84}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=85}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=84..85}] store result entity @s Pose.RightLeg[0] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=86..87}] store result score @s as_pose run data get entity @s Pose.RightLeg[1] 1000
execute if entity @s[scores={as_trigger=86}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=87}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=86..87}] store result entity @s Pose.RightLeg[1] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=88..89}] store result score @s as_pose run data get entity @s Pose.RightLeg[2] 1000
execute if entity @s[scores={as_trigger=88}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=89}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=88..89}] store result entity @s Pose.RightLeg[2] float 0.001 run scoreboard players get @s as_pose
#
# Left Leg: 90-95
#
execute if entity @s[scores={as_trigger=90..91}] store result score @s as_pose run data get entity @s Pose.LeftLeg[0] 1000
execute if entity @s[scores={as_trigger=90}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=91}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=90..91}] store result entity @s Pose.LeftLeg[0] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=92..93}] store result score @s as_pose run data get entity @s Pose.LeftLeg[1] 1000
execute if entity @s[scores={as_trigger=92}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=93}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=92..93}] store result entity @s Pose.LeftLeg[1] float 0.001 run scoreboard players get @s as_pose
#
execute if entity @s[scores={as_trigger=94..95}] store result score @s as_pose run data get entity @s Pose.LeftLeg[2] 1000
execute if entity @s[scores={as_trigger=94}] run scoreboard players operation @s as_pose += @s as_angle
execute if entity @s[scores={as_trigger=95}] run scoreboard players operation @s as_pose -= @s as_angle
execute if entity @s[scores={as_trigger=94..95}] store result entity @s Pose.LeftLeg[2] float 0.001 run scoreboard players get @s as_pose
#
# Tag the armor stand as modified
#
tag @s add as_modified
