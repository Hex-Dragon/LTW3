# 生成蓝色品质的物品实体

execute if score $round mem matches ..2 run function item:bonus_item/gameparty/mixed/blue
execute if score $round mem matches 3 run function item:bonus_item/gameparty/score/blue
execute if score $round mem matches 4 run function item:bonus_item/gameparty/mixed/blue
execute if score $round mem matches 5.. run function item:bonus_item/gameparty/score/blue
