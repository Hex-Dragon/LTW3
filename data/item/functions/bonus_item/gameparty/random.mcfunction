# 根据轮数生成对应的物品

execute if score $round mem matches ..5 run function item:bonus_item/gameparty/normal/random
execute if score $round mem matches 6 run function item:bonus_item/gameparty/last/random