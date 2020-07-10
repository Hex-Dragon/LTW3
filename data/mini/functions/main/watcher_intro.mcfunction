# 向单个玩家展示小游戏时执行
execute if score $mini_type mem matches 1 run function mini:parkour/watcher_intro
execute if score $mini_type mem matches 2 run function mini:tntrun/watcher_intro
execute if score $mini_type mem matches 3 run function mini:hotpm/watcher_intro
execute if score $mini_type mem matches 4 run function mini:colormatch/watcher_intro