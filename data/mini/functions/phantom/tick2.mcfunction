# 近战攻击不消耗三叉戟
execute as @a[tag=mini_running,scores={use_trident=1..}] at @s if data entity @s Inventory[{Slot:8b,id:"minecraft:trident",tag:{game_item:1b}}] run scoreboard players set @s use_trident 0
# 投掷三叉戟
execute as @a[tag=mini_running,scores={use_trident=1..}] at @s run function mini:phantom/game/use_trident

# 给予三叉戟
execute as @a[tag=mini_running,scores={countdown_fast=0}] unless data entity @s Inventory[{Slot:8b,id:"minecraft:trident",tag:{game_item:1b}}] run function mini:phantom/game/give_trident

# 更改丢出的三叉戟的nbt
execute as @e[type=trident,tag=!fixed_trident] run function mini:phantom/game/fix_trident

# 删除掉在地上的三叉戟
kill @e[type=trident,nbt={inGround:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:trident",tag:{game_item:1b}}}]