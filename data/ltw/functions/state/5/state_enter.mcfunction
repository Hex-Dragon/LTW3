# 要求系统进入状态 5（小游戏进行中）
scoreboard players set $state mem 5
execute as @a run function ltw:state/5/player_enter

# HUD
execute if score $mini_type mem matches ..2 run scoreboard objectives setdisplay sidebar
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay sidebar mini_heart
scoreboard objectives setdisplay list total_score

# 调用游戏开始
function mini:main/game_start