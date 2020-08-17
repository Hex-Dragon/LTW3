# 由即将开始选择的玩家执行

tag @s remove mini_rank1
tag @s remove mini_rank2
tag @s remove mini_rank3
tag @s remove mini_rank4
tag @s add selecting

gamemode adventure
tp @s 24.5 11.0 1967.5

tellraw @s ["",{"text": ">> ","color":"green","bold": true},{"text":"轮到你选择奖励了!","color":"green"}]