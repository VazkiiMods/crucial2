#
# Description:	Paste armor stand settings and pose from book
# Called by:	as_statue:trigger
# Entity @s:	armor stand
#
execute as @p[tag=as_selected] run function armor_statues:storage_in
#
data modify entity @s {} merge from storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose
data modify entity @s Pose set from storage customizable_armor_stands:book_storage SavedItem.tag.SavedPose.Pose
#
title @a[tag=as_selected,tag=!as_chat] actionbar {"text":"Settings and pose pasted from the book","color":"dark_green"}
tellraw @a[tag=as_selected,tag=as_chat] {"text":"<Stick_God> Settings and pose pasted from the book","color":"dark_green"}
#
# Tag the armor stand as modified
#
tag @s add as_modified
