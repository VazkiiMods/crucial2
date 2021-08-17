#
# Description:	Unlocks locked armor stand
# Called by:	armor_statues:trigger/lock
# Entity @s:	nearest locked armor stand
#
execute as @p[tag=as_selected,tag=!as_chat] run title @s actionbar {"text":"Armor stand unlocked","color":"dark_green"}
execute as @p[tag=as_selected,tag=as_chat] run tellraw @s {"text":"<Stick_God> Armor stand unlocked","color":"dark_green"}
effect give @s minecraft:glowing 1
data merge entity @s {DisabledSlots:0}
tag @s remove as_locked
#
# add Player UUID lock
#
scoreboard players reset @s as_lock_uuid1
scoreboard players reset @s as_lock_uuid2
scoreboard players reset @s as_lock_uuid3
scoreboard players reset @s as_lock_uuid4
tag @s remove as_uuid_locked