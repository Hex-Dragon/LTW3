# 初始化热土豆地图
forceload add 1000 3000 1100 3100

scoreboard players set $finish_mode mem 0

# 伤害管理
team modify player friendlyFire true
team modify player collisionRule always
gamerule fallDamage false

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]

# 生成地图

#   111
setblock 1023 27 3022 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:22,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm111",sizeY:23,sizeZ:22,showboundingbox:0b}
setblock 1023 28 3022 minecraft:redstone_block

#   110
setblock 1023 27 2999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:22,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm110",sizeY:23,sizeZ:23,showboundingbox:0b}
setblock 1023 28 2999 minecraft:redstone_block

#   011
setblock 1000 27 3022 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm011",sizeY:23,sizeZ:22,showboundingbox:0b}
setblock 1000 28 3022 minecraft:redstone_block

#   010
setblock 1000 27 2999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm010",sizeY:24,sizeZ:23,showboundingbox:0b}
setblock 1000 28 2999 minecraft:redstone_block

#   101
setblock 1023 4 3022 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"!",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm101",sizeY:24,sizeZ:23,showboundingbox:0b}
setblock 1023 5 3022 minecraft:redstone_block

#   100
setblock 1023 4 2999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm100",sizeY:24,sizeZ:23,showboundingbox:0b}
setblock 1023 5 2999 minecraft:redstone_block

#   001
setblock 1000 4 3022 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:1b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm001",sizeY:23,sizeZ:22,showboundingbox:0b}
setblock 1000 5 3022 minecraft:redstone_block

#   000
setblock 1000 4 2999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm000",sizeY:24,sizeZ:23,showboundingbox:0b}
setblock 1000 5 2999 minecraft:redstone_block

# 生成物品
execute positioned 1022.0 17.0 3009.0 run function item:bonus_item/rank/white
execute positioned 1022.5 32.0 3038.0 run function item:bonus_item/rank/white
execute positioned 1022.5 43.5 3012.5 run function item:bonus_item/rank/white