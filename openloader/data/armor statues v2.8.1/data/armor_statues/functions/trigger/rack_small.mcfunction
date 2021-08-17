#
# Description:	Align stand with tripwire hook to make a tool rack for small armor stands
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Turn off gravity for armor stand
#
data merge entity @s {NoGravity:1b}
#
# Check for an tripwire hook in the blocks above the stand and, if found, move the stand into position below the hook and tag it
#
execute at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~1 ~ minecraft:tripwire_hook run tp @s ~ ~ ~
execute at @s if block ~ ~1 ~ minecraft:tripwire_hook run tag @s add as_rack
execute if entity @s[tag=!as_rack] at @s align xyz positioned ~0.5 ~1 ~0.5 if block ~ ~1 ~ minecraft:tripwire_hook run tp @s ~ ~ ~
execute if entity @s[tag=!as_rack] at @s if block ~ ~1 ~ minecraft:tripwire_hook run tag @s add as_rack
execute if entity @s[tag=!as_rack] at @s align xyz positioned ~0.5 ~2 ~0.5 if block ~ ~1 ~ minecraft:tripwire_hook run tp @s ~ ~ ~
execute if entity @s[tag=!as_rack] at @s if block ~ ~1 ~ minecraft:tripwire_hook run tag @s add as_rack
#
# If there is a tripwire hook above the armor stand, rotate the stand to match it's orientation
#
execute at @s if block ~ ~1 ~ minecraft:tripwire_hook[facing=north] run data merge entity @s {Rotation:[180.0f,0.0f]}
execute at @s if block ~ ~1 ~ minecraft:tripwire_hook[facing=east] run data merge entity @s {Rotation:[-90.0f,0.0f]}
execute at @s if block ~ ~1 ~ minecraft:tripwire_hook[facing=south] run data merge entity @s {Rotation:[0.0f,0.0f]}
execute at @s if block ~ ~1 ~ minecraft:tripwire_hook[facing=west] run data merge entity @s {Rotation:[90.0f,0.0f]}
#
# If armor stand is not tagged, display failure message
#
execute if entity @s[tag=!as_rack] run title @a[tag=as_selected,tag=!as_chat] actionbar [{"text":"Tripwire hook not found","color":"dark_red"}]
execute if entity @s[tag=!as_rack] run tellraw @a[tag=as_selected,tag=as_chat] [{"text":"<Stick_God> ","color":"dark_green"},{"text":"Tripwire hook not found","color":"dark_red"}]
#
# Otherwise, adjust the armor stand pose and settings, disabling all slots but the main hand, and move it into place
#
execute if entity @s[tag=as_rack,scores={as_trigger=155}] run data merge entity @s {ShowArms:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-100.0f,90.0f,180.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},DisabledSlots:4079166}
execute if entity @s[tag=as_rack,scores={as_trigger=155}] at @s run tp @s ^-0.085 ^0.87 ^-0.05
#
# Tag the armor stand as modified
#
execute if entity @s[tag=as_rack] run tag @s add as_modified
#
# Also, mark as locked
#
execute if entity @s[tag=as_rack] run tag @s add as_locked
#
# add Player UUID lock
#
execute if entity @s[tag=as_rack] run execute store result score @s as_lock_uuid1 run data get entity @p[tag=as_selected] UUID[0]
execute if entity @s[tag=as_rack] run execute store result score @s as_lock_uuid2 run data get entity @p[tag=as_selected] UUID[1]
execute if entity @s[tag=as_rack] run execute store result score @s as_lock_uuid3 run data get entity @p[tag=as_selected] UUID[2]
execute if entity @s[tag=as_rack] run execute store result score @s as_lock_uuid4 run data get entity @p[tag=as_selected] UUID[3]
execute if entity @s[tag=as_rack] run tag @s add as_uuid_locked
#
# Finally, remove the as_rack tag
#
execute if entity @s[tag=as_rack] run tag @s remove as_rack
