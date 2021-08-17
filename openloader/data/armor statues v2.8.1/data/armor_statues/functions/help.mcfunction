#
# Description:	Display help in chat
# Called by:	armor_statues:tick
# Entity @s:	player
#
execute if score @s as_help matches 2 if data storage customizable_armor_stands:settings as_admin{book_help:"Enabled"} run function armor_statues:help/get_book
execute if score @s as_help matches 3 run function armor_statues:help/chat_actionbar_toggle
execute if score @s as_help matches 4 run function armor_statues:help/credits
execute if score @s as_help matches 1..3 unless score @s as_help matches 2 run function armor_statues:help/main
#
# Reset trigger score
#
scoreboard players set @s as_help 0
scoreboard players enable @s as_help
