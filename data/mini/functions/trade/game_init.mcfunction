# 初始化交易地图
forceload add 1000 5000 1064 5064

scoreboard players reset * emerald
scoreboard players reset * interactVillager
scoreboard players set $finish_mode mem 0
scoreboard players set $show_score mem 1
scoreboard players set $survival mem 1

# 调整时间
time set day

# 生成地图
setblock 1000 255 5000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:-24,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:diamond_base",sizeY:25,sizeZ:32,showboundingbox:1b}
setblock 1000 255 5001 redstone_block

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing collisionRule never
team modify playing deathMessageVisibility always
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage true

# Gamerule 调整
gamerule doLimitedCrafting false
gamerule keepInventory true
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true

schedule function mini:trade/game_init2 10t append