# 使用苦力怕刷怪蛋调用函数
execute as @a[tag=mini_running] if score @s creeperUse matches 1.. run function mini:ass/game/use_creeper

# 给予苦力怕刷怪蛋
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:8b,id:"minecraft:creeper_spawn_egg",tag:{game_item:1b}}] unless score @s countdown_fast matches 1.. run function mini:ass/game/give_creeper

# 给予击退棒
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:7b,id:"minecraft:stick",tag:{game_item:1b}}] run function mini:ass/game/give_stick
