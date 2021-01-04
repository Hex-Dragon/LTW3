# 执行重生方法
function mini:diamond/game/respawn1

# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s blindness 3 5 true
effect give @s weakness 30 1

# 处理玩家掉落物品
execute at @s as @e[type=item,distance=..100] store result score @s temp run data get entity @s Age
execute at @s store result score #total_drop temp run tag @e[type=item,scores={temp=..3}] add death_drop
tellraw @a [{"selector":"@s"},{"text":"一共掉了"},{"score": {"name":"#total_drop","objective": "temp"}},{"text":"件物品"}]
scoreboard players reset @e[type=item] temp
# 单独处理钻石还没写
# 掉落数量向上取整
scoreboard players add #total_drop temp 1
scoreboard players operation #total_drop temp /= #const_2 mem
tellraw @a [{"selector":"@s"},{"text":"将掉落"},{"score": {"name":"#total_drop","objective": "temp"}},{"text":"件物品"}]
execute if score #total_drop temp matches 1.. run function mini:diamond/game/item_drop
# 其余物品丢回背包
tag @s add dead_player
execute as @e[type=item,tag=death_drop] run data modify entity @s Thrower set from entity @a[tag=dead_player,limit=1] UUID
tag @s remove dead_player
execute as @e[type=item,tag=death_drop] run function item:disable_throw
# tag @e[type=item,tag=death_drop] remove death_drop