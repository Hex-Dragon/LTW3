# 限制观察者范围
execute if score $mini_type mem matches 1 run function mini:parkour/watcher_limit
execute if score $mini_type mem matches 2 run function mini:tntrun/watcher_limit
execute if score $mini_type mem matches 3 run function mini:hotpm/watcher_limit
execute if score $mini_type mem matches 4 run function mini:colormatch/watcher_limit