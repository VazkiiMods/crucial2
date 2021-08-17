#
# Description:	Enable option to make locking match player uuids
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
execute store success score #as_success as_help run data modify storage customizable_armor_stands:settings as_admin.uuid_lock set value "Disabled"
execute unless score #as_success as_help matches 1 run data modify storage customizable_armor_stands:settings as_admin.uuid_lock set value "Enabled"
#
tellraw @s [{"text":"UUID locking has been ","color":"aqua"},{"storage":"customizable_armor_stands:settings", "nbt":"as_admin.uuid_lock"}]
#
function armor_statues:admin
