# 初始化钻石地图
forceload add 1000 5000 1064 5064

scoreboard players set $finish_mode mem 1

# 调整时间
time set 2000t

# 生成地图
setblock 1000 255 5000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:-22,sizeX:20,posZ:0,integrity:1.0f,showair:0b,name:"mini:diamond",sizeY:23,sizeZ:20,showboundingbox:1b}
setblock 1000 255 5001 redstone_block

# 清理残余实体
kill @e[type=!player,x=950,y=0,z=4950,dx=100,dy=500,dz=100]

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire true
team modify playing collisionRule always
gamerule fallDamage true
