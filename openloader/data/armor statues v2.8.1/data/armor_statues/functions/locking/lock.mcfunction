#
# Description:	Locks armor stand
# Called by:	armor_statues:trigger/lock
# Entity @s:	armor stand
#
execute as @p[tag=as_selected,tag=!as_chat] run title @s actionbar {"text":"Armor stand locked","color":"dark_green"}
execute as @p[tag=as_selected,tag=as_chat] run tellraw @s {"text":"<Stick_God> Armor stand locked","color":"dark_green"}
effect give @s minecraft:glowing 1
data merge entity @s {DisabledSlots:4144959}
tag @s add as_locked
#
# add Player UUID lock
#
execute store result score @s as_lock_uuid1 run data get entity @p[tag=as_selected] UUID[0]
execute store result score @s as_lock_uuid2 run data get entity @p[tag=as_selected] UUID[1]
execute store result score @s as_lock_uuid3 run data get entity @p[tag=as_selected] UUID[2]
execute store result score @s as_lock_uuid4 run data get entity @p[tag=as_selected] UUID[3]
tag @s add as_uuid_locked