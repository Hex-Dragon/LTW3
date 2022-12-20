
# 清理残余实体
function mini:main/kill_entity
tp @e[type=phantom] 1000 -100 6000

# 生成奖励物品
execute positioned 1034.0 27.5 6058.5 run function item:bonus_item/gameparty/auto/random
execute positioned 1035.0 28.5 6002.5 run function item:bonus_item/gameparty/auto/random
