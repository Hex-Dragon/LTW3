# 根据轮数生成对应的物品

execute if score $round mem matches ..3 run function item:bonus_item/gameparty/mixed/normal
execute if score $round mem matches 4.. run function item:bonus_item/gameparty/score/normal