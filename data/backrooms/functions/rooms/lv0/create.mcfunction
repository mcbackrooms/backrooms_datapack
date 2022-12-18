# リセット
  fill ~ 0 ~ ~15 7 ~15 air
  kill @e[dx=15,dy=5,dz=15,tag=!level.decoration,tag=!level.special,tag=!struchture_1,type=!player]
# 天井/床
  fill ~ ~ ~ ~15 ~ ~15 spruce_planks
  fill ~ ~1 ~ ~15 ~1 ~15 yellow_carpet
  fill ~ ~6 ~ ~15 ~6 ~15 smooth_sandstone
  fill ~ ~7 ~ ~15 ~7 ~15 barrier
  fill ~ ~12 ~ ~15 ~12 ~15 black_concrete
# 装飾
  # 32% lamp
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 0..319 at @s run setblock ~ ~6 ~ pearlescent_froglight
  # 40% wall
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 700..749 run function backrooms:rooms/lv0/wall_700
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 750..799 run function backrooms:rooms/lv0/wall_750
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 800..849 run function backrooms:rooms/lv0/wall_800
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 850..899 run function backrooms:rooms/lv0/wall_850
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 900..949 run function backrooms:rooms/lv0/wall_900
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 950..999 run function backrooms:rooms/lv0/wall_950
  # 0.09% 椅子
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=0}] if score @s random_1000 matches 0..2 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[0.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=1}] if score @s random_1000 matches 3..5 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=2}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[-90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=3}] if score @s random_1000 matches 0..2 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[-180.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=0}] if score @s random_1000 matches 3..5 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[0.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=1}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=2}] if score @s random_1000 matches 0..2 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[-90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=3}] if score @s random_1000 matches 3..5 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[-180.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=0}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[0.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=1}] if score @s random_1000 matches 0..2 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=2}] if score @s random_1000 matches 3..5 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[-90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=3}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^ ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:12}}],Rotation:[-180.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=0}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^3 ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:13}}],Rotation:[0.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=1}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^3 ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:13}}],Rotation:[90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=2}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^3 ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:13}}],Rotation:[-90.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=level.special,scores={random_4=3}] if score @s random_1000 matches 6..8 at @s run summon armor_stand ^3 ^1 ^ {Marker:true,Invisible:true,NoGravity:true,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:13}}],Rotation:[-180.0f,0.0f]}
  # 0.01% 構造物
  execute as @e[type=area_effect_cloud,tag=level.decoration] if score @s random_1000 matches 320 at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,Age:-1,Duration:1,Particle:"block air",Tags:["structure_1"],Rotation:[0.0f,0.0f]}
  execute as @e[type=area_effect_cloud,tag=structure_1] at @s run function backrooms:rooms/lv0/struchture_1
# 仮アイテムkill
  kill @e[type=item]