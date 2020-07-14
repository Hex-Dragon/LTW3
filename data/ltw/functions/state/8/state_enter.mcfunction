# 要求系统进入状态 8（选择奖励）
scoreboard players set $state mem 8
execute as @a run function ltw:state/8/player_enter

# HUD
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp

# 判断进入下一轮小游戏或结束
# execute if score $game_type mem matches 1 if score $round mem matches ..5 run function ltw:state/7/continue_gameparty
# execute if score $game_type mem matches 1 if score $round mem matches 6.. run function ltw:main/game_end