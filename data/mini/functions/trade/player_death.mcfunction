# 执行重生方法
function mini:trade/game/respawn1

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
# 单独处理绿宝石
execute store result score #emerald_count temp run clear @s emerald
scoreboard players add #emerald_count temp 1
execute at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~ ~ ~ {Tags:["temp_emerald"],Item:{id:"minecraft:emerald",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_emerald,limit=1] store result entity @s Item.Count byte 0.5 run scoreboard players get #emerald_count temp
tag @e[type=item,tag=temp_emerald,limit=1] remove temp_emerald
# 随机槽位掉落
function mini:trade/game/random_slot
function mini:trade/game/pop_slot
# 返还绿宝石
scoreboard players remove #emerald_count temp 1
scoreboard players operation #emerald_count temp /= #const_2 mem
execute if score #emerald_count temp matches 1.. run function mini:trade/game/give_emerald
# 删除marker
kill @e[type=armor_stand,tag=dead_marker]