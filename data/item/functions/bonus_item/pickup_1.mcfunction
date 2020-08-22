#当玩家在奖励阶段拾取奖励物品触发
#as player
tag @s add pickup_player
tp @s 24.5 11.0 1967.5 112.5 25
schedule function item:bonus_item/pickup_2 5t replace