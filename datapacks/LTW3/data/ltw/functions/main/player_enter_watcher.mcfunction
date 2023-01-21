# 作为旁观者加入服务器
team join watching @s

# 清除名次
tag @s remove mini_rank1
tag @s remove mini_rank2
tag @s remove mini_rank3
tag @s remove mini_rank4

# 清除积分显示（防止中途加入的旁观者依然保留上一局的积分）
scoreboard players reset @s total_score
scoreboard players reset @s total_score_disp

# 重新加入阶段
tag @s add rejoining
execute if score $state mem matches 0 run function ltw:state/0/player_enter
execute if score $state mem matches 3 run function ltw:state/3/player_enter
execute if score $state mem matches 4 run function ltw:state/4/player_enter
execute if score $state mem matches 5 run function ltw:state/5/player_enter
execute if score $state mem matches 6 run function ltw:state/6/player_enter
execute if score $state mem matches 7 run function ltw:state/7/player_enter
tag @s remove rejoining

# 显示轮数提醒
execute unless score $state mem matches 0 run tellraw @s ["\n",{"text":">> ","color":"aqua","bold":true},"你目前正在旁观, 游戏正在第 ",{"score": {"name": "$round","objective": "mem"},"color": "aqua"}, {"text":"/5","color": "aqua"}," 轮! 结束后你就能加入啦!\n"]