# 延迟1tick玩家tp
schedule function mini:tntrun/player_enter2 1t replace

# 两秒后才开始 TNT 掉落
schedule function mini:tntrun/player_enter3 2s replace

# HUD
scoreboard objectives setdisplay list total_score_disp
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar layer
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show