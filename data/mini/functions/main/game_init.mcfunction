# 小游戏初始化
execute if score $mini_type mem matches 2 run function mini:tntrun/game_init

# 计分板初始化
scoreboard objectives remove mini_score
scoreboard objectives add mini_score dummy "小游戏记录名称"