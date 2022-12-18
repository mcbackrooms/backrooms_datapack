 # リセット
  fill ~ 0 ~ ~14 7 ~14 air
  kill @e[dx=14,dy=5,dz=14,tag=!level.decoration,tag=!level.special,tag=!struchture_1,type=!player]
# 天井/床
  fill ~ ~ ~ ~14 ~ ~14 spruce_planks
  fill ~ ~1 ~ ~14 ~1 ~14 yellow_carpet
  fill ~ ~6 ~ ~14 ~6 ~14 smooth_sandstone
  fill ~ ~7 ~ ~14 ~7 ~14 barrier
  fill ~ ~12 ~ ~14 ~12 ~14 black_concrete
# 壁
  setblock ~ ~1 ~ minecraft:structure_block[mode=load]{name:"backrooms:lv0/struchture_1",posX:0,posY:-1,posZ:0,rotation:"NONE",mode:"LOAD"}
  setblock ~ ~ ~ redstone_block
  kill @s
# 連続性