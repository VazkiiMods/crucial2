#
# Description:	Enable option to get allow item frame fixing from the book
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
execute store success score #as_success as_help run data modify storage customizable_armor_stands:settings as_admin.fixed_item_frame set value "Disabled"
execute unless score #as_success as_help matches 1 run data modify storage customizable_armor_stands:settings as_admin.fixed_item_frame set value "Enabled"
#
tellraw @s [{"text":"Fixing item frame option has been ","color":"aqua"},{"storage":"customizable_armor_stands:settings", "nbt":"as_admin.fixed_item_frame"}]
#
function armor_statues:admin
