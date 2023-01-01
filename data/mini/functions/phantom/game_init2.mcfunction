
# 清理残余实体
function mini:main/kill_entity
tp @e[type=phantom] 1000 -100 6000

# 生成奖励物品
execute positioned 1032.5 22.1 6008.0 run function item:bonus_item/gameparty/auto/low2
execute positioned 1032.0 21.1 6054.0 run function item:bonus_item/gameparty/auto/low2