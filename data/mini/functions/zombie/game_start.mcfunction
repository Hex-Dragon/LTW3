scoreboard players set $countdown mem 170

# HUD
execute if score $mini_type mem matches 5 run scoreboard objectives setdisplay list health_disp
execute if score $mini_type mem matches 5 run scoreboard objectives setdisplay belowName health_disp
execute if score $mini_type mem matches 5 run scoreboard objectives setdisplay sidebar total_score
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show