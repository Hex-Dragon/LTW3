gamerule doDaylightCycle true
scoreboard players set $countdown mem 240

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay belowName diamond
scoreboard objectives setdisplay sidebar diamond
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 240
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"

# 世界边界
worldborder center 1010.0 5010.0
worldborder set 17.999