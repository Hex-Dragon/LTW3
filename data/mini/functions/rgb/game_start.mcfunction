# 游戏结束倒计时
scoreboard players set $countdown mem 100

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay belowName health_disp
scoreboard objectives setdisplay sidebar health_disp
scoreboard players set $bossbar_color mem 3
scoreboard players set $countdown_max mem 100
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:green name "剩余时间"
bossbar set mini:red name "强制死亡模式"