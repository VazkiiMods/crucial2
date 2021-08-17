#
# Description:	Records UUID of the last editor of the armor stand
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
execute store result score @s as_edited_uuid1 run data get entity @p[tag=as_selected] UUID[0]
execute store result score @s as_edited_uuid2 run data get entity @p[tag=as_selected] UUID[1]
execute store result score @s as_edited_uuid3 run data get entity @p[tag=as_selected] UUID[2]
execute store result score @s as_edited_uuid4 run data get entity @p[tag=as_selected] UUID[3]