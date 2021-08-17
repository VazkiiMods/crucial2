#
# Description:	Apply or remove as_sealed and/or as_locked tags
# Called by:	armor_statues:trigger
# Entity @s:	Player
#
# Locking prevents the book from being used to modify the stand and disables the equipment slots to prevent accidental interaction
#
execute if entity @s[scores={as_trigger=1000}] as @e[type=armor_stand,tag=as_selected] run function armor_statues:locking/lock
#
# Unlocking
#
# creative player
execute if entity @s[scores={as_trigger=1001},gamemode=creative] as @e[type=armor_stand,distance=..3,tag=as_locked,tag=!as_sealed,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] run function armor_statues:locking/unlock
# UUID lock disabled
execute if data storage customizable_armor_stands:settings as_admin{uuid_lock:"Disabled"} if entity @s[scores={as_trigger=1001},gamemode=survival] as @e[type=armor_stand,distance=..3,tag=as_locked,tag=!as_sealed,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] run function armor_statues:locking/unlock
# UUID lock enabled
execute if data storage customizable_armor_stands:settings as_admin{uuid_lock:"Enabled"} if entity @s[scores={as_trigger=1001},gamemode=survival] as @e[type=armor_stand,distance=..3,tag=as_locked,tag=!as_sealed,sort=nearest,limit=1,nbt=!{Marker:1b},nbt=!{Invulnerable:1b}] run function armor_statues:locking/lock_check
#
# Sealing can only be used in creative mode and makes the armor stand invulnerable as well as locking it
#
execute if entity @s[scores={as_trigger=1002},gamemode=creative] if entity @e[type=armor_stand,distance=..3,tag=!as_sealed,sort=nearest,limit=1] run function armor_statues:sealing/seal
#
execute if entity @s[scores={as_trigger=1003},gamemode=creative] if entity @e[type=armor_stand,distance=..3,tag=as_sealed,sort=nearest,limit=1] run function armor_statues:sealing/seal
