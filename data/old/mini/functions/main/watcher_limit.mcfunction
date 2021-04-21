# 限制观察者范围
execute if score $mini_type mem matches 1 run function mini:parkour/watcher_limit
execute if score $mini_type mem matches 2 run function mini:tntrun/watcher_limit
execute if score $mini_type mem matches 3 run function mini:hotpm/watcher_limit
execute if score $mini_type mem matches 4 run function mini:colormatch/watcher_limit
execute if score $mini_type mem matches 5 run function mini:phantom/watcher_limit
execute if score $mini_type mem matches 201 run function mini:ass/watcher_limit
execute if score $mini_type mem matches 101 run function mini:diamond/watcher_limit
execute if score $mini_type mem matches 102 run function mini:trade/watcher_limit