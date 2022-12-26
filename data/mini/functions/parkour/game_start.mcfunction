# 游戏结束倒计时
scoreboard players set $countdown mem 150

# HUD
scoreboard objectives setdisplay list total_score_disp
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 150
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"