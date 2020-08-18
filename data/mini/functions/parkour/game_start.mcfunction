# 游戏结束倒计时
scoreboard players set $countdown mem 140

# HUD
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay list total_score_disp
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay belowName total_score_disp
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay sidebar treasure
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 140
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"