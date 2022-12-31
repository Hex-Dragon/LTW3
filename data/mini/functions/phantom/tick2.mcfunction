# 使用三叉戟调用函数
execute as @a[tag=mini_running] if score @s use_trident matches 1.. run function mini:phantom/game/use_trident

# 给予三叉戟
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:8b,id:"minecraft:trident",tag:{game_item:1b}}] unless score @s countdown_fast matches 1.. run function mini:phantom/game/give_trident

# 更改丢出的三叉戟的nbt
execute as @e[type=trident,tag=!fixed_trident] run function mini:phantom/game/fix_trident

# 删除掉在地上的三叉戟
kill @e[type=trident,nbt={inGround:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:trident",tag:{game_item:1b}}}]

# 奖励幻翼特效
execute as @e[tag=bonus_phantom] at @s run particle dust 1 0 0 2 ~ ~ ~ 0.2 0 0.2 0 2 normal