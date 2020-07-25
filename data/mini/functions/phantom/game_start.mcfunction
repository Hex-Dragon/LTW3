gamerule doDaylightCycle true
scoreboard players set $countdown mem 110

# HUD
execute if score $mini_type mem matches 6 run scoreboard objectives setdisplay list health_disp
execute if score $mini_type mem matches 6 run scoreboard objectives setdisplay belowName health_disp
execute if score $mini_type mem matches 6 run scoreboard objectives setdisplay sidebar kill_phantom
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 110
scoreboard players set $bossbar_type mem 2
bossbar set mini:blue name "倒计时"
function lib:bossbar/show