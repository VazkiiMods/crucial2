#
# Description:	Replace titled book with proper command book
# Called by:	advancement armor_statues:crafting
# Entity @s:	Player
#
# Tags the player to replace crafting book
#
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Enabled"} run tag @s add as_craft