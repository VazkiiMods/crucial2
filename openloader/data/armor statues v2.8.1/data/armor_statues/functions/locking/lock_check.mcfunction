#
# Description:	Checks if armor stand has old or new lock
# Called by:	armor_statues:trigger/trigger/lock
# Entity @s:	Player
#
execute if entity @s[tag=as_locked,tag=as_uuid_locked] run function armor_statues:locking/uuid_check
execute if entity @s[tag=as_locked,tag=!as_uuid_locked] run function armor_statues:locking/unlock