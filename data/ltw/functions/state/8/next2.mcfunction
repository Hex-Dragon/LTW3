# 由即将开始选择的玩家执行

tag @s remove mini_rank1
tag @s remove mini_rank2
tag @s remove mini_rank3
tag @s remove mini_rank4

gamemode adventure

tellraw @s ["",{"text": ">> ","color":"green"},"轮到你选择奖励了!"]
