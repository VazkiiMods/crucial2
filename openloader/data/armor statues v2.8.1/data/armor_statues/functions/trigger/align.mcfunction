#
# Description:	Align held block or item with supporting surface
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Align block to surface
#
execute if entity @s[scores={as_trigger=151}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-15.0f,135.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=151}] at @s run tp @s ^0.5725 ^-0.655 ^0.352
#
# Align item to surface (upright)
#
execute if entity @s[scores={as_trigger=152}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-90.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=152}] at @s run tp @s ^0.36 ^-1.41 ^-0.5625
#
# Align item to surface (flat)
#
execute if entity @s[scores={as_trigger=153}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=153}] at @s run tp @s ^0.385 ^-0.78 ^-0.295
#
# Align tool to surface (flat)
#
execute if entity @s[scores={as_trigger=154}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-10.0f,0.0f,-90.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=154}] at @s run tp @s ^-0.17 ^-1.285 ^-0.44
#
# Tag the armor stand as modified
#
tag @s add as_modified
