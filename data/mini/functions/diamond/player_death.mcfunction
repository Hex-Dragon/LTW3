# 执行重生方法
function mini:diamond/game/respawn1

say 3
# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s blindness 3 0 true

# 处理玩家掉落物品
# 获取玩家死亡位置
kill @e[type=armor_stand,tag=dead_marker]
summon armor_stand 1000 0 5000 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["dead_marker"]}
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[0] double 1 run scoreboard players get @s posX
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[1] double 1 run scoreboard players get @s posY
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[2] double 1 run scoreboard players get @s posZ
# 单独处理钻石
execute store result score #diamond_count temp run clear @s diamond
scoreboard players add #diamond_count temp 1
execute at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~ ~ ~ {Tags:["temp_diamond"],Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[type=item,tag=temp_diamond,limit=1] store result entity @s Item.Count byte 0.5 run scoreboard players get #diamond_count temp
tag @e[type=item,tag=temp_diamond,limit=1] remove temp_diamond
# 随机槽位掉落
function mini:diamond/game/random_slot
function mini:diamond/game/pop_slot
# 返还钻石
scoreboard players remove #diamond_count temp 1
scoreboard players operation #diamond_count temp /= #const_2 mem
execute if score #diamond_count temp matches 1.. run function mini:diamond/game/give_diamond
# 删除marker
kill @e[type=armor_stand,tag=dead_marker]