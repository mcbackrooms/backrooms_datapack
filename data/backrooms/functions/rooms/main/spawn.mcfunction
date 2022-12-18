#召喚
  summon area_effect_cloud ~ 0 ~ {Radius:0f,Age:-2147483648,Duration:2147483647,Particle:"block air",Tags:["level.maker","notmaked"]}
  summon area_effect_cloud ~ 0 ~ {Radius:0f,Age:-2147483648,Duration:2147483647,Particle:"block air",Tags:["level.maker","notmaked"]}
# 1チャンクごとに
  execute store result score *Xpos random run data get entity @e[type=area_effect_cloud,tag=level.maker,sort=nearest,limit=1] Pos[0]
  execute store result score *Zpos random run data get entity @e[type=area_effect_cloud,tag=level.maker,sort=nearest,limit=1] Pos[2]
  scoreboard players operation *Xpos random /= *16 random
  scoreboard players operation *Xpos random *= *16 random
  scoreboard players operation *Zpos random /= *16 random
  scoreboard players operation *Zpos random *= *16 random
  data modify storage backrooms: Pos set value [0.0d,0.0d,0.0d]
  execute store result storage backrooms: Pos[0] double 1 run scoreboard players get *Xpos random
  execute store result storage backrooms: Pos[2] double 1 run scoreboard players get *Zpos random
  data modify entity @e[type=area_effect_cloud,tag=level.maker,tag=notmaked,sort=nearest,limit=1] Pos set from storage backrooms: Pos
# 各種生成
  execute as @e[type=area_effect_cloud,tag=level.maker,tag=notmaked,sort=nearest,limit=1] at @s run function backrooms:rooms/main/summon
  execute as @e[type=area_effect_cloud,tag=level.decoration] at @s run tp @s ~ ~ ~ ~ ~10
# レベルデータ保存
  execute as @e[type=area_effect_cloud,tag=level.maker,tag=notmaked,sort=nearest,limit=1] run data modify entity @s WaitTime set from storage backrooms: level
# リセット
  tag @e[type=area_effect_cloud,tag=level.maker,tag=notmaked] remove notmaked