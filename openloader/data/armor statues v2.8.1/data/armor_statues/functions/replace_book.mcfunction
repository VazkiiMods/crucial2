#
# Description:	Replace titled book with proper command book
# Called by:	armor_statues:tick
# Entity @s:	Player
#
# Replaces the written book from the players inventory
#
execute store result score #as_success as_help run clear @s minecraft:written_book{title:"Statues"} 1
execute if score #as_success as_help matches 1.. run function armor_statues:give

tag @s remove as_craft