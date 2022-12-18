data modify storage backrooms: level set from entity @s WaitTime
execute positioned ~16 ~ ~ unless entity @e[type=area_effect_cloud,distance=..8,tag=level.maker] run function backrooms:rooms/main/spawn
execute positioned ~-16 ~ ~ unless entity @e[type=area_effect_cloud,distance=..8,tag=level.maker] run function backrooms:rooms/main/spawn
execute positioned ~ ~ ~16 unless entity @e[type=area_effect_cloud,distance=..8,tag=level.maker] run function backrooms:rooms/main/spawn
execute positioned ~ ~ ~-16 unless entity @e[type=area_effect_cloud,distance=..8,tag=level.maker] run function backrooms:rooms/main/spawn