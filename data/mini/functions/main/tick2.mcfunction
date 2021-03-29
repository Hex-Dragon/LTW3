function mini:main/watcher_limit
execute if score $mini_type mem matches 1 run function mini:parkour/tick2
execute if score $mini_type mem matches 2 run function mini:tntrun/tick2
execute if score $mini_type mem matches 3 run function mini:hotpm/tick2
execute if score $mini_type mem matches 4 run function mini:colormatch/tick2
execute if score $mini_type mem matches 5 run function mini:phantom/tick2
execute if score $mini_type mem matches 201 run function mini:ass/tick2
execute if score $mini_type mem matches 101 run function mini:diamond/tick2
execute if score $mini_type mem matches 102 run function mini:trade/tick2