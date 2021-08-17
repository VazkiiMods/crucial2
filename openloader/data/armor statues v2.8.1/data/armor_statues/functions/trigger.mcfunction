#
# Description:	Apply changes to nearest armor stand according to the player's as_trigger score
# Called by:	armor_statues:second
# Entity @s:	player
#
# Tag the player and the nearest armor stand within three blocks
#
tag @s add as_selected
tag @e[type=armor_stand,distance=..3,tag=!as_locked,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] add as_selected
#
# Copy the trigger score to the selected armor stand
#
scoreboard players operation @e[type=armor_stand,tag=as_selected] as_trigger = @s as_trigger
#
# Give glowing effect for three seconds if checking target
#
execute if entity @s[scores={as_trigger=999}] as @e[type=armor_stand,tag=as_selected] run effect give @s minecraft:glowing 3
#
# armor stand settings
#
execute if entity @s[scores={as_trigger=1..12}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/settings
#
# Nudge position
#
execute if entity @s[scores={as_trigger=40..51}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/position
execute if entity @s[scores={as_trigger=101..112}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/position
execute if entity @s[scores={as_trigger=1100..1129}] as @e[type=armor_stand,tag=as_selected] at @s run function armor_statues:trigger/position_relative
#
# Adjust rotation
#
execute if entity @s[scores={as_trigger=52..57}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/rotation
execute if entity @s[scores={as_trigger=124..125}] as @e[type=armor_stand,tag=as_selected] at @s run function armor_statues:trigger/facing
#
# Pointing
#
execute if entity @s[scores={as_trigger=1160..1171}] as @e[type=armor_stand,tag=as_selected,nbt={Small:0b}] at @s run function armor_statues:trigger/pointing
execute if entity @s[scores={as_trigger=1160..1171}] as @e[type=armor_stand,tag=as_selected,nbt={Small:1b}] at @s run function armor_statues:trigger/pointing_small
#
# Change angle step size
#
execute if entity @s[scores={as_trigger=120}] run scoreboard players set @s as_angle 45
execute if entity @s[scores={as_trigger=121}] run scoreboard players set @s as_angle 15
execute if entity @s[scores={as_trigger=122}] run scoreboard players set @s as_angle 5
execute if entity @s[scores={as_trigger=123}] run scoreboard players set @s as_angle 1
execute if entity @s[scores={as_trigger=120..123},tag=!as_chat] run title @s actionbar [{"text":"Angle step set to ","color":"dark_green"},{"score":{"name":"@s","objective":"as_angle"},"color":"dark_green"},{"text":"\u00b0","color":"dark_green"}]
execute if entity @s[scores={as_trigger=120..123},tag=as_chat] run tellraw @s [{"text":"<Stick_God> Angle step set to ","color":"dark_green"},{"score":{"name":"@s","objective":"as_angle"},"color":"dark_green"},{"text":"\u00b0","color":"dark_green"}]
#
# Pose presets
#
execute if entity @s[scores={as_trigger=20..39}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/presets
execute if entity @s[scores={as_trigger=141..142}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/presets
execute if entity @s[scores={as_trigger=1150}] as @e[type=armor_stand,tag=as_selected] at @s run function armor_statues:trigger/random_pose
#
# Adjust pose
#
execute if entity @s[scores={as_trigger=60..95}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/adjust
#
# Mirror and flip
#
execute if entity @s[scores={as_trigger=131..134}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/mirror
execute if entity @s[scores={as_trigger=135}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/flip
#
# Auto alignment
#
# non-small armor stands
execute if entity @s[scores={as_trigger=151..154}] as @e[type=armor_stand,tag=as_selected,nbt={Small:0b}] run function armor_statues:trigger/align
execute if entity @s[scores={as_trigger=155..156}] as @e[type=armor_stand,tag=as_selected,nbt={Small:0b}] run function armor_statues:trigger/rack
# small armor stands
execute if entity @s[scores={as_trigger=151..154}] as @e[type=armor_stand,tag=as_selected,nbt={Small:1b}] run function armor_statues:trigger/align_small
execute if entity @s[scores={as_trigger=155..156}] as @e[type=armor_stand,tag=as_selected,nbt={Small:1b}] run function armor_statues:trigger/rack_small
#
# Exchange slots
#
execute if entity @s[scores={as_trigger=161..162}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/slots
#
# Copy and paste
#
execute if entity @s[scores={as_trigger=1004},predicate=armor_statues:book] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/copy
execute if entity @s[scores={as_trigger=1005},predicate=armor_statues:savedpose] unless entity @s[predicate=armor_statues:bothhands, predicate=!armor_statues:savedpose_mainhand] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/paste
#
# Lock and seal
#
execute if entity @s[scores={as_trigger=1000..1003}] run function armor_statues:trigger/lock
#
# Records the last editor of the armor stand
#
execute unless entity @s[scores={as_trigger=999}] unless entity @s[scores={as_trigger=999}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:trigger/last_edit
#
# Reset armor stand's trigger score and remove selected tag from player and armor stand
#
scoreboard players reset @e[type=armor_stand,tag=as_selected] as_trigger
tag @s remove as_selected
tag @e[type=armor_stand,tag=as_selected] remove as_selected
#
# Reset player's trigger score and re-enable
#
scoreboard players set @s as_trigger 0
scoreboard players enable @s as_trigger

