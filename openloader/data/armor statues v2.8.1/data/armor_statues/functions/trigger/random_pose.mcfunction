# 
# Description:	Randomizes armor stand pose
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Summons temp armor stand
summon minecraft:armor_stand ~ 0 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
#
data modify storage customizable_armor_stands:pose_storage Pose set value {Head:[0.0f,0.001f,0.0f], Body:[0.0f,0.001f,0.0f], LeftArm:[-10.0f,0.001f,-10.0f], RightArm:[-15.0f,0.001f,10.0f], LeftLeg:[-1.0f,0.001f,-1.0f], RightLeg:[1.0f,0.001f,1.0f]}
#
loot replace entity @e[type=minecraft:armor_stand,tag=as_temp_armor_stand] armor.head loot armor_statues:random_pose
#
# Generate randomizers
#
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_temp_armor_stand] run function armor_statues:randomizer/head
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_temp_armor_stand] run function armor_statues:randomizer/body
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_temp_armor_stand] run function armor_statues:randomizer/left_arm
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_temp_armor_stand] run function armor_statues:randomizer/right_arm
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_temp_armor_stand] run function armor_statues:randomizer/left_leg
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_temp_armor_stand] run function armor_statues:randomizer/right_leg
#
# Sets random pose
#
data modify entity @s Pose set from storage customizable_armor_stands:pose_storage Pose
#
# Kills temp armor stand
#
kill @e[type=armor_stand,tag=as_temp_armor_stand]
#
# Tag the armor stand as modified
#
tag @s add as_modified