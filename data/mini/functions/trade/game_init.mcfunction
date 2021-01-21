# 初始化钻石地图
forceload add 1000 5000 1064 5064

scoreboard players reset * emerald
scoreboard players set $finish_mode mem 0
scoreboard players set $survival mem 1

# 调整时间
time set 8600t

# 生成地图
setblock 1000 255 5000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:-24,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:diamond_base",sizeY:25,sizeZ:32,showboundingbox:1b}
setblock 1000 255 5001 redstone_block
schedule function mini:trade/game_init2 1t append

# 清理残余实体
tp @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100]

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule fallDamage false
gamerule fireDamage true
gamerule drowningDamage true

# Gamerule 调整
gamerule doLimitedCrafting false
gamerule keepInventory true
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true

# 生成实体
summon villager 1000 5 5000 {Tags:["TradeMarker","TradeOrigin"],Invulnerable:1b,Silent:1b,Offers:{Recipes:[{buy:{id:"emerald",Count:4},maxUses:999999,rewardExp:false,xp:20,sell:{id:"spider_spawn_egg",Count:1b}}]},VillagerData:{level:5,type:"jungle",profession:"nitwit"},Xp:10}
# 设置交易列表
execute as @a[team=playing] run function mini:trade/villager_init
# 复制交易列表
execute as @e[type=villager,tag=TradePlayer] run data modify entity @s Offers.Recipes append from entity @e[type=villager,tag=TradeOrigin,limit=1] Offers.Recipes[0]
execute as @e[type=villager,tag=TradePlayer] run data modify entity @s Offers.Recipes append from entity @e[type=villager,tag=TradeOrigin,limit=1] Offers.Recipes[0]
execute as @e[type=villager,tag=TradePlayer] run data modify entity @s Offers.Recipes append from entity @e[type=villager,tag=TradeOrigin,limit=1] Offers.Recipes[0]
execute as @e[type=villager,tag=TradePlayer] run data modify entity @s Offers.Recipes append from entity @e[type=villager,tag=TradeOrigin,limit=1] Offers.Recipes[0]