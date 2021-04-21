# 每个玩家生成村民
summon villager 1000 5 5000 {NoAI:1b,Tags:["TradeMarker","TradePlayer","newVillager","upgradeVillager"],Invulnerable:1b,Silent:1b,Offers:{},VillagerData:{level:2,type:"jungle"},Xp:10}
# 设置对应的积分
scoreboard players operation @e[type=villager,tag=newVillager] player_id = @s player_id
tag @e[type=villager,tag=newVillager] remove newVillager