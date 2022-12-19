
# 清理残余实体
tp @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100]

# 生成实体
kill @e[type=villager,tag=TradeMarker]
summon villager 1 0 1 {NoAI:1b,Tags:["TradeMarker","TradeOrigin"],Invulnerable:1b,Silent:1b,Offers:{},CustomName:'{"text":"使用生物雷达是作弊行为哦！","color":"red"}'}
# 设置交易列表
execute as @e[type=villager,tag=TradeOrigin] at @s run function mini:trade/game/set_trade
# 玩家村民生成
execute as @a[team=playing] run function mini:trade/game/villager_init
# 复制交易列表
execute as @e[type=villager,tag=TradePlayer] run function mini:trade/game/villager_update_trade
# 村民碰撞箱处理
team join playing @e[type=villager,tag=TradePlayer]

# 矿物生成
setblock 1028 252 5030 minecraft:redstone_block

schedule function mini:trade/game_init3 7t