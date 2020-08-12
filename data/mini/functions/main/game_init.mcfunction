# 计分板初始化
scoreboard players reset * mini_score
scoreboard players reset * mini_heart
scoreboard players reset * health

# 小游戏初始化
execute if score $mini_type mem matches 1 run function mini:parkour/game_init
execute if score $mini_type mem matches 2 run function mini:tntrun/game_init
execute if score $mini_type mem matches 3 run function mini:hotpm/game_init
execute if score $mini_type mem matches 4 run function mini:colormatch/game_init
execute if score $mini_type mem matches 5 run function mini:phantom/game_init
