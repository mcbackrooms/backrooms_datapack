# リセット
  fill ~ 0 ~ ~15 7 ~15 air
  kill @e[dx=15,dy=5,dz=15,tag=!level.decoration,tag=!level.special,type=!player]
# 天井/床
  fill ~ ~ ~ ~15 ~ ~15 smooth_sandstone
  fill ~ ~5 ~ ~15 ~5 ~15 smooth_sandstone
# 装飾
  # 32% lamp
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 0..79 at @s run fill ~1 ~4 ~ ~ ~4 ~ light[level=15]
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 0..79 at @s run fill ~1 ~5 ~ ~ ~5 ~ tinted_glass
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 0..79 at @s run fill ~1 ~6 ~ ~ ~6 ~ redstone_lamp
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 0..79 at @s run fill ~1 ~7 ~ ~ ~7 ~ redstone_block
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 80..159 at @s run fill ~-1 ~4 ~ ~ ~4 ~ light[level=15]
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 80..159 at @s run fill ~-1 ~5 ~ ~ ~5 ~ tinted_glass
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 80..159 at @s run fill ~-1 ~6 ~ ~ ~6 ~ redstone_lamp
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 80..159 at @s run fill ~-1 ~7 ~ ~ ~7 ~ redstone_block
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 160..239 at @s run fill ~ ~4 ~1 ~ ~4 ~ light[level=15]
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 160..239 at @s run fill ~ ~5 ~1 ~ ~5 ~ tinted_glass
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 160..239 at @s run fill ~ ~6 ~1 ~ ~6 ~ redstone_lamp
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 160..239 at @s run fill ~ ~7 ~1 ~ ~7 ~ redstone_block
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 240..319 at @s run fill ~ ~4 ~-1 ~ ~4 ~ light[level=15]
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 240..319 at @s run fill ~ ~5 ~-1 ~ ~5 ~ tinted_glass
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 240..319 at @s run fill ~ ~6 ~-1 ~ ~6 ~ redstone_lamp
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 240..319 at @s run fill ~ ~7 ~-1 ~ ~7 ~ redstone_block
  # 40% wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 700..849 at @s run fill ~2 ~1 ~ ~-2 ~4 ~ sand
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 850..999 at @s run fill ~ ~1 ~2 ~ ~4 ~-2 sand
# 特殊
  # 5% to over
  execute as @e[type=area_effect_cloud,tag=level.special] if score @s blockrooms matches 0..49 at @s run setblock ~ ~-5 ~ oak_door[half=lower]
  execute as @e[type=area_effect_cloud,tag=level.special] if score @s blockrooms matches 0..49 at @s run setblock ~ ~-4 ~ oak_door[half=upper]
  execute as @e[type=area_effect_cloud,tag=level.special] if score @s blockrooms matches 0..49 at @s run summon area_effect_cloud ~0.5 ~-5 ~0.5 {Radius:0f,Age:-2147483648,Duration:2147483647,Particle:"block air",Tags:["lv0.toOver"]}