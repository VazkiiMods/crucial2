# 
# Description:	Points an appendage at the player
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Summons temp armor stand
#
# Head
execute if score @s as_trigger matches 1160 rotated ~ 0 run summon minecraft:armor_stand ^ ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1166 rotated ~ 0 run summon minecraft:armor_stand ^ ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
# Body
execute if score @s as_trigger matches 1161 rotated ~ 0 run summon minecraft:armor_stand ^ ^-0.125 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1167 rotated ~ 0 run summon minecraft:armor_stand ^ ^-0.125 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
# Right Arm
execute if score @s as_trigger matches 1162 rotated ~ 0 run summon minecraft:armor_stand ^-0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1168 rotated ~ 0 run summon minecraft:armor_stand ^-0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
# Left Arm
execute if score @s as_trigger matches 1163 rotated ~ 0 run summon minecraft:armor_stand ^0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1169 rotated ~ 0 run summon minecraft:armor_stand ^0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
# Right Leg
execute if score @s as_trigger matches 1164 rotated ~ 0 run summon minecraft:armor_stand ^-0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1170 rotated ~ 0 run summon minecraft:armor_stand ^-0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
# Left Leg
execute if score @s as_trigger matches 1165 rotated ~ 0 run summon minecraft:armor_stand ^0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1171 rotated ~ 0 run summon minecraft:armor_stand ^0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
#
execute if score @s as_trigger matches 1160..1165 as @e[type=minecraft:armor_stand,limit=1,tag=as_temp_armor_stand] at @s positioned ~ ~1.625 ~ run tp @s ~ ~ ~ facing entity @p[tag=as_selected] eyes
execute if score @s as_trigger matches 1166..1171 as @e[type=minecraft:armor_stand,limit=1,tag=as_temp_armor_stand] at @s positioned ~ ~1.625 ~ run tp @s ~ ~ ~ facing entity @p[tag=as_selected] feet
#
execute store result score #temp_as_x as_angle run data get entity @e[type=minecraft:armor_stand,limit=1,tag=as_temp_armor_stand] Rotation[0] 1000
execute store result score #temp_as_z as_angle run data get entity @e[type=minecraft:armor_stand,limit=1,tag=as_temp_armor_stand] Rotation[1] 1000
execute store result score #selected_as_x as_angle run data get entity @s Rotation[0] 1000
execute store result score #selected_as_z as_angle run data get entity @s Rotation[1] 1000
scoreboard players operation #temp_as_x as_angle -= #selected_as_x as_angle
# Appendage offset
scoreboard players operation #temp_as_z as_angle -= #var90000 as_angle
# Head rotation offset
execute if score @s as_trigger matches 1160 run scoreboard players operation #temp_as_z as_angle += #var180000 as_angle
execute if score @s as_trigger matches 1166 run scoreboard players operation #temp_as_z as_angle += #var180000 as_angle
#
execute if score #temp_as_x as_angle matches 180000.. run scoreboard players operation #temp_as_x as_angle -= #var360000 as_angle
execute if score #temp_as_x as_angle matches ..-180000 run scoreboard players operation #temp_as_x as_angle += #var360000 as_angle
execute if score #temp_as_x as_angle matches 90000.. run scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
execute if score #temp_as_x as_angle matches ..-90000 run scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
execute if score #temp_as_x as_angle matches 90000.. run scoreboard players operation #temp_as_x as_angle -= #var180000 as_angle
execute if score #temp_as_x as_angle matches ..-90000 run scoreboard players operation #temp_as_x as_angle += #var180000 as_angle
#scoreboard players operation #temp_as_x as_angle *= #var-1 as_angle
#scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
data modify storage customizable_armor_stands:appendage appendage set value [0f,0f,0f]
execute store result storage customizable_armor_stands:appendage appendage[1] float 0.001 run scoreboard players get #temp_as_x as_angle
execute store result storage customizable_armor_stands:appendage appendage[0] float 0.001 run scoreboard players get #temp_as_z as_angle
# Head
execute if score @s as_trigger matches 1160 run data modify entity @s Pose.Head set from storage customizable_armor_stands:appendage appendage
execute if score @s as_trigger matches 1166 run data modify entity @s Pose.Head set from storage customizable_armor_stands:appendage appendage
# Body
execute if score @s as_trigger matches 1161 run data modify entity @s Pose.Body set from storage customizable_armor_stands:appendage appendage
execute if score @s as_trigger matches 1167 run data modify entity @s Pose.Body set from storage customizable_armor_stands:appendage appendage
# Right Arm
execute if score @s as_trigger matches 1162 run data modify entity @s Pose.RightArm set from storage customizable_armor_stands:appendage appendage
execute if score @s as_trigger matches 1168 run data modify entity @s Pose.RightArm set from storage customizable_armor_stands:appendage appendage
# Left Arm
execute if score @s as_trigger matches 1163 run data modify entity @s Pose.LeftArm set from storage customizable_armor_stands:appendage appendage
execute if score @s as_trigger matches 1169 run data modify entity @s Pose.LeftArm set from storage customizable_armor_stands:appendage appendage
# Right Leg
execute if score @s as_trigger matches 1164 run data modify entity @s Pose.RightLeg set from storage customizable_armor_stands:appendage appendage
execute if score @s as_trigger matches 1170 run data modify entity @s Pose.RightLeg set from storage customizable_armor_stands:appendage appendage
# Left Leg
execute if score @s as_trigger matches 1165 run data modify entity @s Pose.LeftLeg set from storage customizable_armor_stands:appendage appendage
execute if score @s as_trigger matches 1171 run data modify entity @s Pose.LeftLeg set from storage customizable_armor_stands:appendage appendage
#
# Kills temp armor stand
#
kill @e[type=armor_stand,tag=as_temp_armor_stand]
#
# Tag the armor stand as modified
#
tag @s add as_modified