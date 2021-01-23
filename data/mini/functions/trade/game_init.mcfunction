# 初始化钻石地图
forceload add 1000 5000 1064 5064

scoreboard players reset * emerald
scoreboard players reset * interactVillager
scoreboard players set $finish_mode mem 0
scoreboard players set $survival mem 1

# 调整时间
time set day

# 生成地图
setblock 1000 255 5000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:-24,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:diamond_base",sizeY:25,sizeZ:32,showboundingbox:1b}
setblock 1000 255 5001 redstone_block
schedule function mini:trade/game_init2 1t append

# 清理残余实体
tp @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100]

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing seeFriendlyInvisibles false
team modify playing collisionRule never
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
kill @e[type=villager,tag=TradeMarker]
summon villager 1000 5 5000 {NoAI:1b,Tags:["TradeMarker","TradeOrigin"],Invulnerable:1b,Silent:1b,Offers:{},CustomName:'{"text":"使用生物雷达是作弊行为哦！","color":"red"}'}
# 设置交易列表
execute as @e[type=villager,tag=TradeOrigin] at @s run function mini:trade/game/set_trade
# 玩家村民生成
execute as @a[team=playing] run function mini:trade/game/villager_init
# 复制交易列表
execute as @e[type=villager,tag=TradePlayer] run function mini:trade/game/villager_update_trade
# 村民碰撞箱处理
team join playing @e[type=villager,tag=TradePlayer]