# 给与玩家三叉戟
execute as @a[tag=mini_running] unless score @s countdown matches 1.. run function mini:phantom/game/give_trident
execute as @a[tag=mini_running] unless score @s countdown matches 1.. run scoreboard players set @s countdown 2

# 清理错位的三叉戟
execute as @a[tag=mini_running] unless score @s countdown matches 1.. unless data entity @s Inventory[{id:"minecraft:trident",Slot:8b,tag:{GameItem:1b}}] if data entity @s Inventory[{id:"minecraft:trident",tag:{GameItem:1b}}] run function mini:phantom/game/give_trident

# 更改对出的三叉戟的nbt
execute as @e[type=trident,tag=!fixed_trident] run function mini:phantom/game/fix_trident

# 删除掉在地上的三叉戟
kill @e[type=trident,nbt={inGround:1b}]