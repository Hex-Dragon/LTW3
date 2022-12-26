
# 清理残余实体
kill @e[type=falling_block,tag=parkour_block]
function mini:main/kill_entity

# 生成节奏方块与物品刷新标记实体
function mini:parkour/game/marker_spawn

# 生成传送门实体
summon minecraft:falling_block 1014 21 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 21 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 22 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 22 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 23 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 23 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}

# 生成奖励物品
execute positioned 1014.50 19.50 1024.50 run function item:bonus_item/gameparty/auto/low
execute positioned 1015.50 12.00 1019.50 run function item:bonus_item/gameparty/auto/low2
execute positioned 1024.50 30.50 1038.50 run function item:bonus_item/gameparty/auto/low2
execute positioned 1004.50 18.50 1043.50 run function item:bonus_item/gameparty/auto/low2

# 生成秘密宝藏
execute as @e[tag=treasure_secret] at @s run function item:bonus_item/gameparty/auto/low3

# 生成随机宝藏（4 奖励物品，6 秘密宝藏，15 随机宝藏）
scoreboard players set #item_count mem 25
execute as @e[tag=bonus_item,x=1000,y=0,z=1000,dx=100,dy=100,dz=100] run scoreboard players remove #item_count mem 1
execute if score #item_count mem matches 1.. run function mini:parkour/game/generate_loop