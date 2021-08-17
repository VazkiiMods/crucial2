#
# Description:	Copies selected armor stand settings and pose to the book
# Called by:	as_statue:trigger
# Entity @s:	armor stand
#
execute as @p[tag=as_selected] run function armor_statues:storage_in
#
data modify storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose set value {Pose:{}, NoBasePlate:0b, ShowArms:0b, Small:0b, Invisible:0b, CustomNameVisible:0b}
#
data modify storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose.Pose set from entity @s Pose
data modify storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose.NoBasePlate set from entity @s NoBasePlate
data modify storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose.ShowArms set from entity @s ShowArms
data modify storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose.Small set from entity @s Small
data modify storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose.Invisible set from entity @s Invisible
data modify storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose.CustomNameVisible set from entity @s CustomNameVisible
#
execute as @p[tag=as_selected] run function armor_statues:storage_out
#
title @a[tag=as_selected,tag=!as_chat] actionbar {"text":"Pose and settings copied to the book","color":"dark_green"}
tellraw @a[tag=as_selected,tag=as_chat] {"text":"<Stick_God> Pose and settings copied to the book","color":"dark_green"}
effect give @s minecraft:glowing 1
