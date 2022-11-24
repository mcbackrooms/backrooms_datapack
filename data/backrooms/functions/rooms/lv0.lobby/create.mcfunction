# リセット
  fill ~ 0 ~ ~15 7 ~15 air
  kill @e[dx=15,dy=5,dz=15,tag=!level.decoration,tag=!level.special,type=!player]
# 天井/床
  fill ~ ~ ~ ~15 ~ ~15 wet_sponge
  fill ~ ~6 ~ ~15 ~6 ~15 smooth_sandstone
  fill ~ ~7 ~ ~15 ~7 ~15 barrier
  fill ~ ~12 ~ ~15 ~12 ~15 black_concrete
# 装飾
  # 32% lamp
    execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 0..319 at @s run setblock ~ ~6 ~ pearlescent_froglight
  # 40% wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 700..749 at @s run fill ~2 ~1 ~ ~-2 ~5 ~ sponge
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 750..799 at @s run fill ~ ~1 ~2 ~ ~5 ~-2 sponge
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 800..824 at @s run fill ~2 ~2 ~ ~-2 ~5 ~ stone_bricks
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 800..824 at @s run fill ~2 ~1 ~ ~-2 ~1 ~ cobblestone
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 825..849 at @s run fill ~ ~2 ~2 ~ ~5 ~-2 stone_bricks
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 825..849 at @s run fill ~ ~1 ~2 ~ ~1 ~-2 cobblestone
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 850..874 at @s run fill ~2 ~2 ~ ~-2 ~5 ~ stone_brick_wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 850..874 at @s run fill ~2 ~1 ~ ~-2 ~1 ~ cobblestone_wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 875..899 at @s run fill ~ ~2 ~2 ~ ~5 ~-2 stone_brick_wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 875..899 at @s run fill ~ ~1 ~2 ~ ~1 ~-2 cobblestone_wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 900..949 at @s run fill ~1 ~2 ~1 ~ ~5 ~ stone_brick_wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 900..949 at @s run fill ~1 ~1 ~1 ~ ~1 ~ cobblestone_wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s blockrooms matches 950..999 at @s run fill ~ ~1 ~ ~ ~5 ~ sponge
# 特殊
  # 5% to over
  execute as @e[type=area_effect_cloud,tag=level.special] if score @s blockrooms matches 0..49 at @s run setblock ~ ~-5 ~ oak_door[half=lower]
  execute as @e[type=area_effect_cloud,tag=level.special] if score @s blockrooms matches 0..49 at @s run setblock ~ ~-4 ~ oak_door[half=upper]
  execute as @e[type=area_effect_cloud,tag=level.special] if score @s blockrooms matches 0..49 at @s run summon area_effect_cloud ~0.5 ~-5 ~0.5 {Radius:0f,Age:-2147483648,Duration:2147483647,Particle:"block air",Tags:["lv0.toOver"]}