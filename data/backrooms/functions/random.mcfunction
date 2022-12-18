execute at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["rand"]}
execute at @s store result score @s random_1000 run data get entity @e[type=area_effect_cloud,tag=rand,sort=nearest,limit=1] UUID[0] 0.00001

scoreboard players operation @s random_4 %= *4 random
scoreboard players operation @s random_1000 %= *1000 random