
# HUD
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay sidebar total_score
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay belowName total_score_disp
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay sidebar total_score
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay belowName total_score_disp
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay sidebar mini_heart
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay belowName mini_heart
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay sidebar mini_heart
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay belowName mini_heart
scoreboard objectives setdisplay list total_score_disp


# 调用其他模块
execute if score $mini_type mem matches 2 run function mini:tntrun/game_start
execute if score $mini_type mem matches 3 run function mini:hotpm/game_start
execute if score $mini_type mem matches 4 run function mini:colormatch/game_start
