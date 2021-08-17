#
# Description:	turns item frame invisible
# Called by:	armor_statues:if_trigger
# Entity @s:	item frame
#
#
# If no potion in hand, display failure message
#
execute if entity @p[tag=as_selected,predicate=!armor_statues:mainhand_potion,predicate=!armor_statues:offhand_potion] run title @a[tag=as_selected,tag=!as_chat] actionbar [{"text":"Requires invisibility potion in Mainhand or Offhand","color":"dark_red"}]
execute if entity @p[tag=as_selected,predicate=!armor_statues:mainhand_potion,predicate=!armor_statues:offhand_potion] run tellraw @a[tag=as_selected,tag=as_chat] [{"text":"<Stick_God> ","color":"dark_green"},{"text":"Requires invisibility potion in Mainhand or Offhand","color":"dark_red"}]
#
# If player has a potion in hand, successfully trigger
#
execute unless entity @p[tag=as_selected,predicate=!armor_statues:mainhand_potion,predicate=!armor_statues:offhand_potion] run function armor_statues:item_frames/invisible_success
