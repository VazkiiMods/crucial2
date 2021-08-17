#
# Description:	Send notifications to chat
# Called by:	armor_statues:help
# Entity @s:	Player
#
execute store success score #as_success as_help run tag @s add as_chat
execute unless score #as_success as_help matches 1 run tag @s remove as_chat

#
execute if entity @s[tag=as_chat] run tellraw @s [{"text":"Notifications will be directed to chat","color":"aqua"}]
execute if entity @s[tag=!as_chat] run tellraw @s [{"text":"Notifications will be directed to the action bar","color":"aqua"}]
