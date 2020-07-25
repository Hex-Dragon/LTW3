# 2秒后给予土豆
schedule function mini:hotpm/game/pm_init_first 2s replace

# HUD
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay list mini_heart_disp
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay belowName mini_heart
execute if score $mini_type mem matches 3 run scoreboard objectives setdisplay sidebar total_score
scoreboard players set $bossbar_type mem 0