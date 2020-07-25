
# HUD
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay list total_score_disp
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay belowName total_score_disp
execute if score $mini_type mem matches 1 run scoreboard objectives setdisplay sidebar treasure
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay list total_score_disp
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay belowName total_score_disp
execute if score $mini_type mem matches 2 run scoreboard objectives setdisplay sidebar total_score
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay list mini_heart_disp
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay belowName mini_heart
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay sidebar total_score
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay list mini_heart_disp
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay belowName mini_heart
execute if score $mini_type mem matches 4 run scoreboard objectives setdisplay sidebar total_score
execute if score $mini_type mem matches 5 run scoreboard objectives setdisplay list health_disp
execute if score $mini_type mem matches 5 run scoreboard objectives setdisplay belowName health_disp
execute if score $mini_type mem matches 5 run scoreboard objectives setdisplay sidebar total_score
execute if score $mini_type mem matches 6 run scoreboard objectives setdisplay list health_disp
execute if score $mini_type mem matches 6 run scoreboard objectives setdisplay belowName health_disp
execute if score $mini_type mem matches 6 run scoreboard objectives setdisplay sidebar kill_phantom
execute if score $mini_type mem matches 7 run scoreboard objectives setdisplay list health_disp
execute if score $mini_type mem matches 7 run scoreboard objectives setdisplay belowName total_score
execute if score $mini_type mem matches 7 run scoreboard objectives setdisplay sidebar slime_score

# 调用其他模块
execute if score $mini_type mem matches 1 run function mini:parkour/game_start
execute if score $mini_type mem matches 2 run function mini:tntrun/game_start
execute if score $mini_type mem matches 3 run function mini:hotpm/game_start
execute if score $mini_type mem matches 4 run function mini:colormatch/game_start
execute if score $mini_type mem matches 5 run function mini:zombie/game_start
execute if score $mini_type mem matches 6 run function mini:phantom/game_start
execute if score $mini_type mem matches 7 run function mini:slime/game_start
