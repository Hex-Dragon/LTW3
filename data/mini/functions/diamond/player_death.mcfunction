# 执行重生方法
function mini:diamond/game/respawn1

# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s blindness 3 5 true

# 处理玩家掉落物品
execute at @s as @e[type=item,distance=..100] store result score @s temp run data get entity @s Age
execute at @s store result score #total_drop temp run tag @e[type=item,scores={temp=..3}] add death_drop
execute as @e[type=item,tag=death_drop] run data modify entity @s Invulnerable set value 1b
scoreboard players reset @e[type=item] temp
# 单独处理钻石还没写
function mini:diamond/game/drop_diamond 
# 掉落数量向上取整
scoreboard players add #total_drop temp 1
scoreboard players operation #total_drop temp /= #const_2 mem
execute if score #total_drop temp matches 1.. run function mini:diamond/game/item_drop
# 其余物品丢回背包
tag @s add dead_player
execute as @e[type=item,tag=death_drop] run data modify entity @s Thrower set from entity @a[tag=dead_player,limit=1] UUID
tag @s remove dead_player