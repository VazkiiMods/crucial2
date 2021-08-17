#
# Description:	Summon marker area effect cloud for shrine
# Called by:	player
# Entity @s:	player
#
# Summon AEC
#
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Duration:2147000000,Radius:0.0,Tags:["as_shrine"],Particle:"minecraft:underwater"}
#
# Store coordinates of shrine
#
execute store result score #as_shrine_x as_help run data get entity @e[type=minecraft:area_effect_cloud,tag=as_shrine,distance=..3,limit=1] Pos[0] 1
execute store result score #as_shrine_z as_help run data get entity @e[type=minecraft:area_effect_cloud,tag=as_shrine,distance=..3,limit=1] Pos[2] 1
