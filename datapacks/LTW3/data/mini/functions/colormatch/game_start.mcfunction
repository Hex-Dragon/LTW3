# HUD
scoreboard objectives setdisplay list mini_heart_disp
scoreboard objectives setdisplay belowName mini_heart
scoreboard objectives setdisplay sidebar total_score
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 开始轮次
function mini:colormatch/game/start_new_round
