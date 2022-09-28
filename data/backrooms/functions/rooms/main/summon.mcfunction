summon area_effect_cloud ~2 ~ ~2 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~2 ~ ~8 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~2 ~ ~13 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~5 ~ ~5 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~5 ~ ~10 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~7 ~ ~2 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~8 ~ ~13 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~10 ~ ~5 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~10 ~ ~10 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~13 ~ ~2 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~13 ~ ~7 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}
summon area_effect_cloud ~13 ~ ~13 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.decoration","level.rand"]}

summon area_effect_cloud ~8 ~ ~8 {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["level.special","level.rand"]}

execute as @e[type=area_effect_cloud,tag=level.rand] run function backrooms:random
execute if data storage backrooms: {level:0} run function backrooms:rooms/lv0.lobby/create
kill @e[type=area_effect_cloud,tag=level.rand]