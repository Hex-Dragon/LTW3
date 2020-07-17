# 初始化跑酷地图
forceload add 1000 1000 1064 1064

scoreboard players set $finish_mode mem 1
scoreboard players set $remove_resistance mem 0

# 生成地图
setblock 1000 4 1000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour0",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1000 minecraft:redstone_block
setblock 1000 4 1032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour1",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1032 minecraft:redstone_block

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=falling_block,tag=parkour_block]

# 生成奖励物品
execute positioned 1004.5 18.5 1043.5 run function item:bonus_item/gameparty/normal/white
execute positioned 1024.5 30.5 1038.5 run function item:bonus_item/gameparty/last/green

# 初始化开门变量
scoreboard players set $parkour_door mem 0

# 伤害管理
team modify player friendlyFire false
team modify player collisionRule always
gamerule fallDamage false
