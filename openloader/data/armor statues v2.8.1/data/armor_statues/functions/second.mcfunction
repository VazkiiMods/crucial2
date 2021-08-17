#
# Description:	Check for players with trigger score set
# Called by:	#minecraft:tick
# Entity @s:	none
#
# Armor stand trigger
#
schedule function armor_statues:second 1s

execute as @a[scores={as_trigger=1..}] at @s run function armor_statues:trigger
#
# Item Frame trigger
#
execute as @a[scores={if_invisible=1..}] at @s run function armor_statues:if_trigger
#
# Makes empty invisible item frames visible
#
execute as @e[type=item_frame,tag=if_invisible,nbt=!{Item:{Count:1b}}] run function armor_statues:item_frames/visible
#
# Check for players at the particle shrine
#
execute as @e[tag=as_shrine] at @s run function armor_statues:shrine/main
#
# resets crafting advancement
#
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Enabled"} as @a[advancements={armor_statues:crafting=true}] run advancement revoke @s only armor_statues:crafting