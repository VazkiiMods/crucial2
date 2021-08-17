# 
# Description:	Nudge postion of armor stand relative to player and aligned to the world grid
# Called by:	armor_statues:trigger/position_relative
# Entity @s:	armor stand
#
# X/Left/Right
execute if entity @p[tag=as_selected,scores={as_trigger=1100}] run tp @s ^-0.5 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1101}] run tp @s ^-0.1875 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1102}] run tp @s ^-0.0625 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1103}] run tp @s ^0.0625 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1104}] run tp @s ^0.1875 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1105}] run tp @s ^0.5 ^ ^
# Z/Forward/backward
execute if entity @p[tag=as_selected,scores={as_trigger=1106}] run tp @s ^ ^ ^-0.5
execute if entity @p[tag=as_selected,scores={as_trigger=1107}] run tp @s ^ ^ ^-0.1875
execute if entity @p[tag=as_selected,scores={as_trigger=1108}] run tp @s ^ ^ ^-0.0625
execute if entity @p[tag=as_selected,scores={as_trigger=1109}] run tp @s ^ ^ ^0.0625
execute if entity @p[tag=as_selected,scores={as_trigger=1110}] run tp @s ^ ^ ^0.1875
execute if entity @p[tag=as_selected,scores={as_trigger=1111}] run tp @s ^ ^ ^0.5
