# 生成村民
execute at @s run summon villager ~ ~ ~ {NoAI:1b,Tags:["TradeMarker","TradePlayer","newVillager"],Invulnerable:1b,Silent:1b,Offers:{},VillagerData:{level:2,type:"jungle"},Xp:10}
# 设置对应的积分
scoreboard players operation @e[type=villager,tag=newVillager] player_id = @s player_id
# 复制对应nbt
data modify entity @e[type=villager,tag=newVillager,limit=1] Xp set from entity @s Xp
data modify entity @e[type=villager,tag=newVillager,limit=1] VillagerData set from entity @s VillagerData
data modify entity @e[type=villager,tag=newVillager,limit=1] Offers set from entity @s Offers
# 清理tag
tag @e[type=villager,tag=newVillager] remove newVillager
# 清理旧村民
execute at @s run tp @s ~ -100 ~
kill @s