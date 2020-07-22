# 初始化跑酷地图
forceload add 1000 1000 1064 1064

scoreboard players set $finish_mode mem 1
scoreboard players set $tempo_enable mem 1
scoreboard players set $countdown_fast mem 0

# 生成地图
setblock 1000 4 1000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour0",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1000 minecraft:redstone_block
setblock 1000 4 1032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour1",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1032 minecraft:redstone_block
setblock 1000 4 1000 air
setblock 1000 4 1032 air

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=falling_block,tag=parkour_block]
kill @e[type=trident]
kill @e[type=armor_stand,tag=parkour_tempo]

# 生成节奏方块实体
summon armor_stand 1004 17 1050 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1009 16 1051 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1012 8 1036 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1009 10 1036 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1012 10 1034 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1010 10 1033 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1010 12 1030 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}

summon armor_stand 1014 8 1035 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1014 9 1033 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1009 9 1036 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1010 11 1033 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1010 11 1030 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}

# 生成奖励物品
execute positioned 1004.5 18.5 1043.5 run function item:bonus_item/gameparty/auto/white
execute positioned 1024.5 30.5 1038.5 run function item:bonus_item/gameparty/auto/blue

# 初始化开门变量
scoreboard players set $parkour_door mem 0

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify player friendlyFire false
team modify player collisionRule never
gamerule fallDamage false
