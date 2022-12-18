execute as @a run summon area_effect_cloud ~2 ~ ~2 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~2 ~ ~8 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~2 ~ ~13 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~5 ~ ~5 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~5 ~ ~10 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~7 ~ ~2 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~8 ~ ~13 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~10 ~ ~5 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~10 ~ ~10 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~13 ~ ~2 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~13 ~ ~7 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
execute as @a run summon area_effect_cloud ~13 ~ ~13 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}

summon area_effect_cloud ~8 ~ ~8 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.special","level.rand"]}

execute as @e[type=area_effect_cloud,tag=level.rand] run function backrooms:random

execute as @e[type=area_effect_cloud,tag=level.rand,scores={random_4=0}] at @s run tp @s ~ ~ ~ 0 0
execute as @e[type=area_effect_cloud,tag=level.rand,scores={random_4=1}] at @s run tp @s ~ ~ ~ 90 0
execute as @e[type=area_effect_cloud,tag=level.rand,scores={random_4=2}] at @s run tp @s ~ ~ ~ 180 0
execute as @e[type=area_effect_cloud,tag=level.rand,scores={random_4=3}] at @s run tp @s ~ ~ ~ 270 0

execute if data storage backrooms: {level:0} run function backrooms:rooms/lv0/create
kill @e[type=area_effect_cloud,tag=level.rand]