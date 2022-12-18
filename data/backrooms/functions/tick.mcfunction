# ランダム転送 0.1% per tick
  execute as @a[tag=!in_lv0] run function backrooms:random
  execute as @a[tag=!in_lv0] if score @s random_1000 matches ..1 run function backrooms:noclip
  scoreboard players reset @a[tag=!in_lv0] random_1000
# Lv0 生成
  execute as @a[tag=call.lv0.create,nbt={Dimension:"backrooms:lv0"},nbt={HurtTime:1s}] at @s run function backrooms:rooms/main/spawn
  execute as @a[tag=call.lv0.create,nbt={Dimension:"backrooms:lv0"},nbt={HurtTime:1s}] at @s run tag @s remove call.lv0.create
# 自動 生成/削除 処理
  execute as @e[type=area_effect_cloud,tag=level.maker,tag=!notmaked] at @s positioned ~8 ~ ~8 unless entity @a[distance=..160] at @s run function backrooms:rooms/main/delete
  execute as @e[type=area_effect_cloud,tag=level.maker,tag=!notmaked] at @s positioned ~8 ~ ~8 if entity @a[distance=..128] positioned ~-8 ~ ~-8 run function backrooms:rooms/main/expand
# 脱出
  #execute as @a[tag=in_lv0] at @s if entity @e[type=area_effect_cloud,tag=lv0.toOver,distance=..1] run function backrooms:in_backrooms/lv0.to.over
  tag @a[nbt={Dimension:"minecraft:over_world"}] remove in_lv0
#向き
  scoreboard players add @a random_4 1
  execute as @a[scores={random_4=5..}] run scoreboard players set @a random_4 1