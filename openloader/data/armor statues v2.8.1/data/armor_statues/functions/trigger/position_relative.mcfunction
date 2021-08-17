#
# Description:	Nudge postion of armor stand relative to the player
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Summons temp armor stand
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_armor_stand"],DisabledSlots:4144959,Silent:1b}
tp @e[type=armor_stand,tag=as_temp_armor_stand] ~ ~ ~ facing entity @p[tag=as_selected]
#
# stores temp armor stand angle
#
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] store result score #temp_rotation as_pose run data get entity @e[type=armor_stand,tag=as_temp_armor_stand,limit=1] Rotation[0]
# Facing south
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches -45..45 rotated 0 0 run function armor_statues:relative_position_aligned_nudge
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches 316..360 rotated 0 0 run function armor_statues:relative_position_aligned_nudge
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches -360..-316 rotated 0 0 run function armor_statues:relative_position_aligned_nudge
# Facing West
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches 46..135 rotated 90 0 run function armor_statues:relative_position_aligned_nudge
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches -315..-226 rotated 90 0 run function armor_statues:relative_position_aligned_nudge
# Facing North
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches 136..225 rotated 180 0 run function armor_statues:relative_position_aligned_nudge
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches -225..-136 rotated 180 0 run function armor_statues:relative_position_aligned_nudge
# Facing East
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches 226..315 rotated 270 0 run function armor_statues:relative_position_aligned_nudge
execute if entity @p[tag=as_selected,scores={as_trigger=1100..1111}] if score #temp_rotation as_pose matches -135..-46 rotated 270 0 run function armor_statues:relative_position_aligned_nudge
#
# Relative nudge from player function
#
execute if entity @p[tag=as_selected,scores={as_trigger=1112..1129}] rotated as @e[type=armor_stand,tag=as_temp_armor_stand] run function armor_statues:relative_position_nudge
#
# Kills temp armor stand
#
kill @e[type=armor_stand,tag=as_temp_armor_stand]
#
# Tag the armor stand as modified
#
tag @s add as_modified
