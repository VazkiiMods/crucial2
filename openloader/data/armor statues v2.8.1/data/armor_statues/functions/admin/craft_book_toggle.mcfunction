#
# Description:	Enable option to get the book by crafting
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
execute store success score #as_success as_help run data modify storage customizable_armor_stands:settings as_admin.book_craft set value "Disabled"
execute unless score #as_success as_help matches 1 run data modify storage customizable_armor_stands:settings as_admin.book_craft set value "Enabled"
#
tellraw @s [{"text":"Getting the book via crafting has been ","color":"aqua"},{"storage":"customizable_armor_stands:settings", "nbt":"as_admin.book_craft"}]
#
function armor_statues:admin
