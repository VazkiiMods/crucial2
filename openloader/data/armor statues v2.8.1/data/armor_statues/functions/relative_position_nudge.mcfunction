# 
# Description:	Nudge postion of armor stand relative to player
# Called by:	armor_statues:trigger/position_relative
# Entity @s:	armor stand
#
# X/Left/Right
execute if entity @p[tag=as_selected,scores={as_trigger=1112}] run tp @s ^-0.5 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1113}] run tp @s ^-0.1875 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1114}] run tp @s ^-0.0625 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1115}] run tp @s ^0.0625 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1116}] run tp @s ^0.1875 ^ ^
execute if entity @p[tag=as_selected,scores={as_trigger=1117}] run tp @s ^0.5 ^ ^
# Y/Up/Down
execute if entity @p[tag=as_selected,scores={as_trigger=1118}] run tp @s ^ ^-0.5 ^
execute if entity @p[tag=as_selected,scores={as_trigger=1119}] run tp @s ^ ^-0.1875 ^
execute if entity @p[tag=as_selected,scores={as_trigger=1120}] run tp @s ^ ^-0.0625 ^
execute if entity @p[tag=as_selected,scores={as_trigger=1121}] run tp @s ^ ^0.0625 ^
execute if entity @p[tag=as_selected,scores={as_trigger=1122}] run tp @s ^ ^0.1875 ^
execute if entity @p[tag=as_selected,scores={as_trigger=1123}] run tp @s ^ ^0.5 ^
# Z/Forward/backward
execute if entity @p[tag=as_selected,scores={as_trigger=1124}] run tp @s ^ ^ ^-0.5
execute if entity @p[tag=as_selected,scores={as_trigger=1125}] run tp @s ^ ^ ^-0.1875
execute if entity @p[tag=as_selected,scores={as_trigger=1126}] run tp @s ^ ^ ^-0.0625
execute if entity @p[tag=as_selected,scores={as_trigger=1127}] run tp @s ^ ^ ^0.0625
execute if entity @p[tag=as_selected,scores={as_trigger=1128}] run tp @s ^ ^ ^0.1875
execute if entity @p[tag=as_selected,scores={as_trigger=1129}] run tp @s ^ ^ ^0.5