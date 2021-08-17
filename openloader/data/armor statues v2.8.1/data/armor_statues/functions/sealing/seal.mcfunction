#
# Description:	Seals armor stand
# Called by:	armor_statues:trigger/lock
# Entity @s:	player - mod
#
execute if entity @s[tag=!as_chat] if entity @e[type=armor_stand,distance=..3,tag=!as_sealed,sort=nearest,limit=1] run title @s actionbar {"text":"Armor stand sealed","color":"dark_green"}
execute if entity @s[tag=as_chat] if entity @e[type=armor_stand,distance=..3,tag=!as_sealed,sort=nearest,limit=1] run tellraw @s {"text":"<Stick_God> Armor stand sealed","color":"dark_green"}
execute as @e[type=armor_stand,distance=..3,tag=!as_sealed,sort=nearest,limit=1] run effect give @s minecraft:glowing 1
execute as @e[type=armor_stand,distance=..3,tag=!as_sealed,sort=nearest,limit=1] run data merge entity @s {Invulnerable:1b,DisabledSlots:4144959}
execute as @e[type=armor_stand,distance=..3,tag=!as_sealed,sort=nearest,limit=1] run tag @s add as_locked
execute as @e[type=armor_stand,distance=..3,tag=!as_sealed,sort=nearest,limit=1] run tag @s add as_sealed