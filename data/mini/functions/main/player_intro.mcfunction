# 向单个玩家展示小游戏时执行
execute if score $mini_type mem matches 1 run function mini:parkour/player_intro
execute if score $mini_type mem matches 2 run function mini:tntrun/player_intro