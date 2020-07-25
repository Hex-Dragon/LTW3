# 初始化史莱姆地图
forceload add 1000 7000 1064 7064

scoreboard players set $finish_mode mem 0
scoreboard players reset * slime_score

# 生成地图
setblock 1000 4 7000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:slime",sizeY:7,sizeZ:32,showboundingbox:0b}
setblock 1000 5 7000 redstone_block
setblock 1000 4 7000 air

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
tp @e[type=slime] 1000 -100 6000
kill @e[type=trident]

# 重置分数
scoreboard players reset $slime_last_hit mem
scoreboard players set $countdown_fast mem 0

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify player friendlyFire false
team modify player collisionRule always
gamerule fallDamage false
