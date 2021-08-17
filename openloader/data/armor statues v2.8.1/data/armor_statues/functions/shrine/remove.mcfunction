#
# Description:	Remove marker area effect cloud
# Called by:	player
# Entity @s:	player
#
# If shrine AEC is within range, reset shrine coordinates
#
execute if entity @e[type=area_effect_cloud,tag=as_shrine,distance=..3] run scoreboard players reset #as_shrine_x as_help
execute if entity @e[type=area_effect_cloud,tag=as_shrine,distance=..3] run scoreboard players reset #as_shrine_z as_help
#
# Remove AEC
#
kill @e[type=area_effect_cloud,tag=as_shrine,distance=..3,sort=nearest,limit=1]
