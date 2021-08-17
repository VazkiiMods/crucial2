#
# Description:	Checks UUID of player against the UUID of the armor stand and player
# Called by:	armor_statues:trigger/lock
# Entity @s:	nearest locked armor stand
#
execute store result score @p[tag=as_selected] as_lock_uuid1 run data get entity @p[tag=as_selected] UUID[0]
execute store result score @p[tag=as_selected] as_lock_uuid2 run data get entity @p[tag=as_selected] UUID[1]
execute store result score @p[tag=as_selected] as_lock_uuid3 run data get entity @p[tag=as_selected] UUID[2]
execute store result score @p[tag=as_selected] as_lock_uuid4 run data get entity @p[tag=as_selected] UUID[3]
#
scoreboard players set #as_success as_help 0
execute store success score #as_success as_help if score @p[tag=as_selected] as_lock_uuid1 = @s as_lock_uuid1 if score @p[tag=as_selected] as_lock_uuid2 = @s as_lock_uuid2 if score @p[tag=as_selected] as_lock_uuid3 = @s as_lock_uuid3 if score @p[tag=as_selected] as_lock_uuid4 = @s as_lock_uuid4 run function armor_statues:locking/unlock
#
execute if score #as_success as_help matches 0 as @p[tag=as_selected,tag=!as_chat] run title @s actionbar {"text":"Can't modify armor stands locked by a different player","color":"dark_red"}
execute if score #as_success as_help matches 0 as @p[tag=as_selected,tag=as_chat] run tellraw @s [{"text":"<Stick_God> ","color":"dark_green"},{"text":"Can't modify armor stands locked by a different player","color":"dark_red"}]