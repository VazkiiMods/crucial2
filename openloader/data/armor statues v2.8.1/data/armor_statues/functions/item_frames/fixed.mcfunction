#
# Description:	turns item frame invisible
# Called by:	armor_statues:if_trigger
# Entity @s:	item frame
#
# Makes item frame fixed
#
execute if entity @p[tag=as_selected,scores={if_invisible=2}] unless entity @s[tag=if_fixed] run title @a[tag=as_selected,tag=!as_chat] actionbar [{"text":"Item frame fixed","color":"dark_green"}]
execute if entity @p[tag=as_selected,scores={if_invisible=2}] unless entity @s[tag=if_fixed] run tellraw @a[tag=as_selected,tag=as_chat] [{"text":"<Stick_God> ","color":"dark_green"},{"text":"Item frame fixed","color":"dark_red"}]
#
execute if entity @p[tag=as_selected,scores={if_invisible=2}] unless entity @s[tag=if_fixed] run data merge entity @s {Fixed:1b}
execute if entity @p[tag=as_selected,scores={if_invisible=2}] unless entity @s[tag=if_fixed] run tag @s add if_fixed
#
# Unfixes item frame
#
execute if entity @p[tag=as_selected,scores={if_invisible=3}] if entity @s[tag=if_fixed] run title @a[tag=as_selected,tag=!as_chat] actionbar [{"text":"Item frame no longer fixed","color":"dark_green"}]
execute if entity @p[tag=as_selected,scores={if_invisible=3}] if entity @s[tag=if_fixed] run tellraw @a[tag=as_selected,tag=as_chat] [{"text":"<Stick_God> ","color":"dark_green"},{"text":"Item frame no longer fixed","color":"dark_green"}]
#
execute if entity @p[tag=as_selected,scores={if_invisible=3}] if entity @s[tag=if_fixed] run data merge entity @s {Fixed:0b}
execute if entity @p[tag=as_selected,scores={if_invisible=3}] if entity @s[tag=if_fixed] run tag @s remove if_fixed
