# 初始化跑酷地图
forceload add 1000 1000 1064 1064

scoreboard players reset * treasure
scoreboard players set $finish_mode mem 1
scoreboard players set $tempo_enable mem 1
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0

# 生成地图
setblock 1000 4 1000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour0",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1000 minecraft:redstone_block
setblock 1000 4 1032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour1",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1032 minecraft:redstone_block
setblock 1000 4 1000 air
setblock 1000 4 1032 air

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire false
team modify playing collisionRule never
team modify playing deathMessageVisibility never
gamerule fallDamage false

schedule function mini:parkour/game_init2 1t replace