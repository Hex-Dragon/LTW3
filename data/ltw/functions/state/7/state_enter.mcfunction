# 要求系统进入状态 7（选择奖励）
scoreboard players set $state mem 7
execute as @a run function ltw:state/7/player_enter

# HUD
scoreboard objectives setdisplay sidebar total_score

# 判断进入下一轮小游戏或结束
execute if score $game_type mem matches 1 if score $round mem matches ..2 run function ltw:state/7/continue_gameparty
execute if score $game_type mem matches 1 if score $round mem matches 3.. run function ltw:main/game_end
