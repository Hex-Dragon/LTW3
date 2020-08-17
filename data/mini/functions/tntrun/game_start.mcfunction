# 延迟1tick玩家tp
schedule function mini:tntrun/player_enter2 1t replace

# 两秒后才开始 TNT 掉落
schedule function mini:tntrun/player_enter3 2s replace

# HUD
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay list total_score_disp
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay belowName total_score_disp
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay sidebar layer
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show