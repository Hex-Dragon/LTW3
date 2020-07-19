# 更改对出的三叉戟的nbt
execute as @e[type=trident,tag=!fixed_trident] run function mini:phantom/game/fix_trident

# 删除掉在地上的三叉戟
kill @e[type=trident,nbt={OnGround:1b}]