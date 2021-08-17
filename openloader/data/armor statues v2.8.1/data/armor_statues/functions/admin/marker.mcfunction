#
# This function is currently not used - see armor_statues:admin for details
#

#
# Description:	Sets the Marker tag on all locked armor stands within 128 blocks
# Called by:	armor_statues:admin via chat clickEvent
# Entity @s:	Player
#
# Note: DisabledSlots tag is checked to exclude armor stands in tool racks
#
# Store number of affected stands for reporting
#
execute store result score @s as_pose run execute if entity @e[type=armor_stand,distance=..128,tag=as_locked,nbt=!{Marker:1b},nbt=!{DisabledSlots:4079166}]
#
# Set Marker tag on affected stands
#
execute as @e[type=armor_stand,distance=..128,tag=as_locked,nbt=!{Marker:1b},nbt=!{DisabledSlots:4079166}] run data merge entity @s {Marker:1b}
#
# Report number affected
#
tellraw @p [{"text":"Marker set on ","color":"aqua"},{"score":{"name":"@s","objective":"as_pose"},"color":"aqua"},{"text":" armor stands","color":"aqua"}]
#
scoreboard players reset @s as_pose
