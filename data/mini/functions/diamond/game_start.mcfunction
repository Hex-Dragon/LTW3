gamerule doDaylightCycle true
scoreboard players set $countdown mem 300

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay belowName diamond
scoreboard objectives setdisplay sidebar diamond
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 300
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"