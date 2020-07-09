# 限制观察者范围
execute if score $mini_type mem matches 1 run function mini:parkour/spectator_range
execute if score $mini_type mem matches 2 run function mini:tntrun/spectator_range
execute if score $mini_type mem matches 3 run function mini:hotpm/spectator_range
execute if score $mini_type mem matches 4 run function mini:colormatch/spectator_range