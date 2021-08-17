#
# Description:	Nudge postion of armor stand
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Trigger values 41, 42, 45, 46, 49 and 50 are redundant and kept for backwards compatibility
#
execute if entity @s[scores={as_trigger=40}] at @s run tp @s ~-0.5 ~ ~
execute if entity @s[scores={as_trigger=101}] at @s run tp @s ~-0.1875 ~ ~
execute if entity @s[scores={as_trigger=41}] at @s run tp @s ~-0.1 ~ ~
execute if entity @s[scores={as_trigger=102}] at @s run tp @s ~-0.0625 ~ ~
execute if entity @s[scores={as_trigger=103}] at @s run tp @s ~0.0625 ~ ~
execute if entity @s[scores={as_trigger=42}] at @s run tp @s ~0.1 ~ ~
execute if entity @s[scores={as_trigger=104}] at @s run tp @s ~0.1875 ~ ~
execute if entity @s[scores={as_trigger=43}] at @s run tp @s ~0.5 ~ ~
execute if entity @s[scores={as_trigger=44}] at @s run tp @s ~ ~-0.5 ~
execute if entity @s[scores={as_trigger=105}] at @s run tp @s ~ ~-0.1875 ~
execute if entity @s[scores={as_trigger=45}] at @s run tp @s ~ ~-0.1 ~
execute if entity @s[scores={as_trigger=106}] at @s run tp @s ~ ~-0.0625 ~
execute if entity @s[scores={as_trigger=107}] at @s run tp @s ~ ~0.0625 ~
execute if entity @s[scores={as_trigger=46}] at @s run tp @s ~ ~0.1 ~
execute if entity @s[scores={as_trigger=108}] at @s run tp @s ~ ~0.1875 ~
execute if entity @s[scores={as_trigger=47}] at @s run tp @s ~ ~0.5 ~
execute if entity @s[scores={as_trigger=48}] at @s run tp @s ~ ~ ~-0.5
execute if entity @s[scores={as_trigger=109}] at @s run tp @s ~ ~ ~-0.1875
execute if entity @s[scores={as_trigger=49}] at @s run tp @s ~ ~ ~-0.1
execute if entity @s[scores={as_trigger=110}] at @s run tp @s ~ ~ ~-0.0625
execute if entity @s[scores={as_trigger=111}] at @s run tp @s ~ ~ ~0.0625
execute if entity @s[scores={as_trigger=50}] at @s run tp @s ~ ~ ~0.1
execute if entity @s[scores={as_trigger=112}] at @s run tp @s ~ ~ ~0.1875
execute if entity @s[scores={as_trigger=51}] at @s run tp @s ~ ~ ~0.5
#
# Tag the armor stand as modified
#
tag @s add as_modified
