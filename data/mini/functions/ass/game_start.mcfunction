# 游戏结束倒计时
scoreboard players set $countdown mem 165

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay belowName health_disp
scoreboard objectives setdisplay sidebar
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 165
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"
bossbar set mini:red name "剩余时间"