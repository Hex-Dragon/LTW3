# 每个玩家生成村民
summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["VillagerMarker","newVillagerMarker"],Passengers:[{id:"villager",NoAI:1b,Tags:["TradeMarker","TradePlayer"],Invulnerable:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{level:2,type:"jungle"},Xp:10}]}
# summon villager 1000 5 5000 {NoAI:1b,Tags:["TradeMarker","TradePlayer","newVillager"],Invulnerable:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{level:2,type:"jungle"},Xp:10}
# 设置对应的积分
scoreboard players operation @e[type=area_effect_cloud,tag=newVillagerMarker] player_id = @s player_id
tag @e[type=area_effect_cloud,tag=newVillagerMarker] remove newVillagerMarker