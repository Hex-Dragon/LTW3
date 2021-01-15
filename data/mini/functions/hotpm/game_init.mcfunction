# 初始化热土豆地图
forceload add 1000 3000 1100 3100

scoreboard players set $finish_mode mem 0
scoreboard players set $survival mem 0

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule fallDamage false

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=trident]

# 生成地图

#   101
setblock 1023 4 3022 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"!",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm101",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1023 5 3022 minecraft:redstone_block

#   100
setblock 1023 4 2999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm100",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1023 5 2999 minecraft:redstone_block

#   001
setblock 1000 4 3022 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:1b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm001",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 3022 minecraft:redstone_block

#   000
setblock 1000 4 2999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hotpm000",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 2999 minecraft:redstone_block

# 生成物品
execute positioned 1022.0 17.0 3009.0 run function item:bonus_item/gameparty/auto/white
execute positioned 1022.5 32.0 3038.0 run function item:bonus_item/gameparty/auto/white
# execute positioned 1022.5 43.5 3012.5 run function item:bonus_item/gameparty/auto/white