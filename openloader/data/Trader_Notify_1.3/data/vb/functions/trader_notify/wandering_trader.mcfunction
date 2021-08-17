execute as @e[type=minecraft:wandering_trader,tag=!wtannounced] at @s run tellraw @a ["",{"text":"A "},{"text":"Wandering Trader","color":"blue"},{"text":" has spawned near "},{"selector":"@p"}]
tag @e[type=minecraft:wandering_trader,tag=!wtannounced] add wtannounced
schedule function vb:trader_notify/wandering_trader 60s