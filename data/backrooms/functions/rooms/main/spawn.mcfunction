#召喚
  summon area_effect_cloud ~ 0 ~ {Radius:0f,Age:-2147483648,Duration:2147483647,Particle:"block air",Tags:["level.maker","notmaked"]}
# 1チャンクごとに
  execute store result score *Xpos blockrooms run data get entity @e[type=area_effect_cloud,tag=level.maker,sort=nearest,limit=1] Pos[0]
  execute store result score *Zpos blockrooms run data get entity @e[type=area_effect_cloud,tag=level.maker,sort=nearest,limit=1] Pos[2]
  scoreboard players operation *Xpos blockrooms /= *16 blockrooms
  scoreboard players operation *Xpos blockrooms *= *16 blockrooms
  scoreboard players operation *Zpos blockrooms /= *16 blockrooms
  scoreboard players operation *Zpos blockrooms *= *16 blockrooms
  data modify storage backrooms: Pos set value [0.0d,0.0d,0.0d]
  execute store result storage backrooms: Pos[0] double 1 run scoreboard players get *Xpos blockrooms
  execute store result storage backrooms: Pos[2] double 1 run scoreboard players get *Zpos blockrooms
  data modify entity @e[type=area_effect_cloud,tag=level.maker,tag=notmaked,sort=nearest,limit=1] Pos set from storage backrooms: Pos
# 各種生成
  execute as @e[type=area_effect_cloud,tag=level.maker,tag=notmaked,sort=nearest,limit=1] at @s run function backrooms:rooms/main/summon
# レベルデータ保存
  execute as @e[type=area_effect_cloud,tag=level.maker,tag=notmaked,sort=nearest,limit=1] run data modify entity @s WaitTime set from storage backrooms: level
# リセット
  tag @e[type=area_effect_cloud,tag=level.maker,tag=notmaked] remove notmaked