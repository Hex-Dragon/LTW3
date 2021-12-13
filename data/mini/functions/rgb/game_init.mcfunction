# 初始化地图
forceload add 1008 8000 1071 8063

scoreboard players set $finish_mode mem 1
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0

# 生成地图
setblock 1008 7 8000 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_000",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1040 7 8000 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_100",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1008 7 8032 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_001",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1040 7 8032 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_101",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1008 8 8000 minecraft:redstone_block destroy
setblock 1040 8 8000 minecraft:redstone_block destroy
setblock 1008 8 8032 minecraft:redstone_block destroy
setblock 1040 8 8032 minecraft:redstone_block destroy
setblock 1008 7 8000 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:0.005f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_000_p",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1040 7 8000 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:0.005f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_100_p",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1008 7 8032 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:0.005f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_001_p",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1040 7 8032 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:0.005f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:rgb_101_p",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:32,sizeY:32,sizeZ:32} destroy
setblock 1008 8 8000 minecraft:redstone_block destroy
setblock 1040 8 8000 minecraft:redstone_block destroy
setblock 1008 8 8032 minecraft:redstone_block destroy
setblock 1040 8 8032 minecraft:redstone_block destroy
fill 1008 7 8000 1040 8 8032 air

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule naturalRegeneration false
gamerule fallDamage true

# 重置系统
data remove storage ltw:mini rgb
scoreboard players set $ rgb_rule_id 0
scoreboard players reset @a rgb_R
scoreboard players reset @a rgb_G
scoreboard players reset @a rgb_B

# GameRule 调整
gamerule fireDamage true