# 初始化幻翼地图
forceload add 1000 6000 1064 6064

scoreboard players set $finish_mode mem 0
scoreboard players reset * kill_phantom
scoreboard players reset * kill_phantom2

# 调整时间
time set 21000t

# 生成地图
setblock 1000 4 6000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hy00",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 6000 redstone_block
setblock 1000 4 6032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hy01",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 6032 redstone_block
setblock 1032 4 6000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hy10",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1032 5 6000 redstone_block
setblock 1032 4 6032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hy11",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1032 5 6032 redstone_block
setblock 1000 4 6000 air
setblock 1000 4 6032 air
setblock 1032 4 6000 air
setblock 1032 4 6032 air

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
tp @e[type=phantom] 1000 -100 6000
kill @e[type=trident]

# 生成奖励物品
execute positioned 1034.0 27.5 6058.5 run function item:bonus_item/gameparty/auto/white
execute positioned 1035.0 28.5 6002.5 run function item:bonus_item/gameparty/auto/white

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify player friendlyFire false
team modify player collisionRule always
#gamerule fallDamage false
