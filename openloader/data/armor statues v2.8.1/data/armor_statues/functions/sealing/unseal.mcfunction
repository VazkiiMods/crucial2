#
# Description:	Unseals sealed armor stand
# Called by:	armor_statues:trigger/lock
# Entity @s:	player - mod
#
execute if entity @s[tag=!as_chat] if entity @e[type=armor_stand,distance=..3,tag=as_sealed,sort=nearest,limit=1] run title @s actionbar {"text":"Armor stand unsealed","color":"dark_green"}
execute if entity @s[tag=as_chat] if entity @e[type=armor_stand,distance=..3,tag=as_sealed,sort=nearest,limit=1] run tellraw @p {"text":"<Stick_God> Armor stand unsealed","color":"dark_green"}
execute as @e[type=armor_stand,distance=..3,tag=as_sealed,sort=nearest,limit=1] run effect give @s minecraft:glowing 1
execute as @e[type=armor_stand,distance=..3,tag=as_sealed,sort=nearest,limit=1] run data merge entity @s {Invulnerable:0b,DisabledSlots:0}
execute as @e[type=armor_stand,distance=..3,tag=as_sealed,sort=nearest,limit=1] run tag @s remove as_locked
execute as @e[type=armor_stand,distance=..3,tag=as_sealed,sort=nearest,limit=1] run tag @s remove as_sealed