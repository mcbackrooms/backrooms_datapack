tag @s remove inBlockrooms
particle dust 0 0 0 5 ~ ~ ~ 1.5 1.5 1.5 0 500
effect give @s blindness 15 0 true
spreadplayers ~ ~ 0 1 false @s 
execute at @s run tp @s ~ ~ ~ ~ ~-90
gamemode survival @s
execute at @s run particle dust 0 0 0 5 ~ ~ ~ 1.5 1.5 1.5 0 500
