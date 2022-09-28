tag @s add inBlockrooms
tag @s add call.lv0.create
#tag @s add call.lv0.create
particle dust 0 0 0 5 ~ ~ ~ 1.5 1.5 1.5 0 500
effect give @s blindness 3 0 true
execute in backrooms:lv0.lobby positioned as @s run tp @s ~ 2 ~
data modify storage backrooms: level set value 0
#execute in backrooms:lv0.lobby run function backrooms:rooms/main/spawn
#execute at @s run function backrooms:rooms/main/spawn
gamemode adventure @s