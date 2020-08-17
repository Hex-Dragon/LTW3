# 初始化 TNT Run 地图
forceload add 1000 2000 1050 2050

scoreboard players set $finish_mode mem 0

# 生成地图
##000
setblock 1000 9 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun000",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 10 2000 minecraft:redstone_block
##001
setblock 1000 9 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun001",sizeY:32,sizeZ:8,showboundingbox:0b}
setblock 1000 10 2032 minecraft:redstone_block
##100
setblock 1032 9 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun100",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1032 10 2000 minecraft:redstone_block
##101
setblock 1032 9 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun101",sizeY:32,sizeZ:8,showboundingbox:10}
setblock 1032 10 2032 minecraft:redstone_block
##010
setblock 1000 52 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun010",sizeY:10,sizeZ:32,showboundingbox:0b}
setblock 1000 51 2000 minecraft:redstone_block
##011
setblock 1000 52 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun011",sizeY:10,sizeZ:8,showboundingbox:0b}
setblock 1000 51 2032 minecraft:redstone_block
##110
setblock 1032 52 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun110",sizeY:10,sizeZ:32,showboundingbox:0b}
setblock 1032 51 2000 minecraft:redstone_block
##111
setblock 1032 52 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun111",sizeY:10,sizeZ:8,showboundingbox:0b}
setblock 1032 51 2032 minecraft:redstone_block
# FIXME: [010] 清理结构方块

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[tag=tntrun_block]
kill @e[type=trident]

# 生成奖励
execute positioned 1019.5 19.2 2020.5 run function item:bonus_item/gameparty/auto/white

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify player friendlyFire true
team modify player collisionRule always
gamerule fallDamage false
