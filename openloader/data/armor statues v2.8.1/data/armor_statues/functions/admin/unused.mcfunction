#
# Description:	Removes all unused armor stands in loaded chunks
# Called by:	armor_statues:admin via chat clickEvent
# Entity @s:	Player
#
# Note: "Unused" stands are invisible, are not holding or wearing items, and are not part of a tool rack
#
# Store number of affected stands for reporting
#
execute store result score @s as_pose run execute if entity @e[type=armor_stand,nbt={Invisible:1b},nbt=!{HandItems:[{Count:1b}]},nbt=!{ArmorItems:[{Count:1b}]},nbt=!{DisabledSlots:4079166},nbt=!{Invulnerable:1b},nbt=!{Marker:1b}]
#
# Kill affected stands
#
execute as @e[type=armor_stand,nbt={Invisible:1b},nbt=!{HandItems:[{Count:1b}]},nbt=!{ArmorItems:[{Count:1b}]},nbt=!{DisabledSlots:4079166},nbt=!{Invulnerable:1b},nbt=!{Marker:1b}] run kill @s
#
# Report number affected
#
tellraw @p [{"score":{"name":"@s","objective":"as_pose"},"color":"aqua"},{"text":" unused armor stands deleted","color":"aqua"}]
#
scoreboard players reset @s as_pose
