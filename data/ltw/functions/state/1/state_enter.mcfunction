# 要求系统进入状态 1（主阶段准备）
scoreboard players set $state mem 1
execute as @a run function ltw:state/1/player_enter

# HUD
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp

# 初始化倒计时
scoreboard players set $countdown mem 10

# 生成地图
function ltw:state/1/generate_map