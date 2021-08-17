#
# Description:	Adjust rotation of armor stand
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Note: The function is being executed at the location of the original player, not the armor stand, so @p must be the same player
#
# Trigger values 52 thru 55 are redundant and kept for backwards compatibility
#
execute if entity @s[scores={as_trigger=52..57}] store result score @s as_pose run data get entity @s Rotation[0] 1
execute if entity @s[scores={as_trigger=52}] run scoreboard players add @s as_pose 45
execute if entity @s[scores={as_trigger=53}] run scoreboard players add @s as_pose 5
execute if entity @s[scores={as_trigger=54}] run scoreboard players remove @s as_pose 5
execute if entity @s[scores={as_trigger=55}] run scoreboard players remove @s as_pose 45
execute if entity @s[scores={as_trigger=56}] run scoreboard players operation @s as_pose += @p as_angle
execute if entity @s[scores={as_trigger=57}] run scoreboard players operation @s as_pose -= @p as_angle
execute if entity @s[scores={as_trigger=52..57}] store result entity @s Rotation[0] float 1 run scoreboard players get @s as_pose
#
# Tag the armor stand as modified
#
tag @s add as_modified
