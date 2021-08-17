# 
# Description:	adjusts probability
# Called by:	armor_statues:randomizer/left_leg
# Entity @s:	temp armor stand
#
scoreboard players set #x_negative as_angle 0
scoreboard players set #y_negative as_angle 0
scoreboard players set #z_negative as_angle 0
scoreboard players set #random_type as_angle 0
execute if predicate armor_statues:random_chance_30 run scoreboard players set #random_type as_angle 1
execute if score #random_type as_angle matches 1 if predicate armor_statues:random_chance_50 run scoreboard players set #random_type as_angle 2
# crossing reduction
scoreboard players set #no_crossing as_angle 0
execute if predicate armor_statues:random_chance_85 run scoreboard players set #no_crossing as_angle 1
#execute if score #no_crossing as_angle matches 1 if score #x_angle as_angle matches 10000..170000 run scoreboard players operation #x_angle as_angle -= #var180000 as_angle
execute if score #no_crossing as_angle matches 1 if score #y_angle as_angle matches 10000..170000 run scoreboard players operation #y_angle as_angle -= #var180000 as_angle
execute if score #no_crossing as_angle matches 1 if score #z_angle as_angle matches 10000..170000 run scoreboard players operation #z_angle as_angle -= #var180000 as_angle
# negative modulo
execute if score #random_type as_angle matches 0..1 if score #x_angle as_angle matches ..-1 run scoreboard players set #x_negative as_angle 1
execute if score #random_type as_angle matches 0..1 if score #y_angle as_angle matches ..-1 run scoreboard players set #y_negative as_angle 1
execute if score #random_type as_angle matches 0..1 if score #z_angle as_angle matches ..-1 run scoreboard players set #z_negative as_angle 1
execute if score #x_negative as_angle matches 1 run scoreboard players operation #x_angle as_angle *= #var-1 as_angle
execute if score #y_negative as_angle matches 1 run scoreboard players operation #y_angle as_angle *= #var-1 as_angle
execute if score #z_negative as_angle matches 1 run scoreboard players operation #z_angle as_angle *= #var-1 as_angle
# small angle #random_type=0
execute if score #random_type as_angle matches 0 run scoreboard players operation #x_angle as_angle %= #var45000 as_angle
execute if score #random_type as_angle matches 0 run scoreboard players operation #y_angle as_angle %= #var45000 as_angle
execute if score #random_type as_angle matches 0 run scoreboard players operation #z_angle as_angle %= #var45000 as_angle
# med angle #random_type=1
execute if score #random_type as_angle matches 1 run scoreboard players operation #x_angle as_angle %= #var90000 as_angle
execute if score #random_type as_angle matches 1 run scoreboard players operation #y_angle as_angle %= #var90000 as_angle
execute if score #random_type as_angle matches 1 run scoreboard players operation #z_angle as_angle %= #var90000 as_angle
# extreme angle #random_type=2 (no modulo)
# reversed negative
execute if score #x_negative as_angle matches 1 run scoreboard players operation #x_angle as_angle *= #var-1 as_angle
execute if score #y_negative as_angle matches 1 run scoreboard players operation #y_angle as_angle *= #var-1 as_angle
execute if score #z_negative as_angle matches 1 run scoreboard players operation #z_angle as_angle *= #var-1 as_angle