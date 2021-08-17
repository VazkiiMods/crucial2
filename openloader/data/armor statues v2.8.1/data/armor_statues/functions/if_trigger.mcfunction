#
# Description:	Apply changes to nearest item frame according to the player's if_invisible score
# Called by:	armor_statues:second
# Entity @s:	player
#
# Tag the player and an item frame 1 block in front of their eyes
#
tag @s add as_selected
execute anchored eyes positioned ^ ^ ^1 as @e[type=item_frame,distance=..1,tag=!as_locked,sort=nearest,limit=1,nbt=!{Invulnerable:1b},nbt={Item:{Count:1b}}] unless entity @s[tag=!if_fixed,nbt={Fixed:1b}] run tag @s add as_selected
#
# Copy the trigger score to the selected item frame
#
scoreboard players operation @e[type=item_frame,tag=as_selected] if_invisible = @s if_invisible
#
# Makes item frame 1 block in front of you invisible if it has an item
#
execute if entity @s[scores={if_invisible=1}] as @e[type=item_frame,tag=as_selected,nbt=!{Invisible:1b}] run function armor_statues:item_frames/invisible
#
# Item frame fixing
#
# Creative
execute if entity @s[scores={if_invisible=2..3},gamemode=creative] as @e[type=item_frame,tag=as_selected] run function armor_statues:item_frames/fixed
# Enabled
execute if data storage customizable_armor_stands:settings as_admin{fixed_item_frame:"Enabled"} if entity @s[scores={if_invisible=2..3},gamemode=survival] as @e[type=item_frame,tag=as_selected] run function armor_statues:item_frames/fixed
# Disabled
execute if data storage customizable_armor_stands:settings as_admin{fixed_item_frame:"Disabled"} if entity @s[scores={if_invisible=2..3},gamemode=survival] if entity @p[tag=as_selected,predicate=!armor_statues:mainhand_potion,predicate=!armor_statues:offhand_potion] run title @a[tag=as_selected,tag=!as_chat] actionbar [{"text":"Must be enabled from admin menu","color":"dark_red"}]
execute if data storage customizable_armor_stands:settings as_admin{fixed_item_frame:"Disabled"} if entity @s[scores={if_invisible=2..3},gamemode=survival] if entity @p[tag=as_selected,predicate=!armor_statues:mainhand_potion,predicate=!armor_statues:offhand_potion] run tellraw @a[tag=as_selected,tag=as_chat] [{"text":"<Stick_God> ","color":"dark_green"},{"text":"Must be enabled from admin menu","color":"dark_red"}]
#
# Reset item frame's trigger score and remove selected tag from player and item frame
#
scoreboard players reset @e[type=item_frame,tag=as_selected] if_invisible
tag @s remove as_selected
tag @e[type=item_frame,tag=as_selected] remove as_selected
#
# Reset player's trigger score and re-enable
#
scoreboard players set @s if_invisible 0
scoreboard players enable @s if_invisible