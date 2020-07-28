# HUD
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay list mini_heart_disp
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay belowName mini_heart
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay sidebar total_score
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 开始轮次
function mini:colormatch/game/start_new_round
