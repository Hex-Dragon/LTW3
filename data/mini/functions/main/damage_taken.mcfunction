# 检测分数调用对应函数
execute if score $mini_type mem matches 3 run function mini:hotpm/game/damage_taken
execute if score $mini_type mem matches 5 run function mini:zombie/game/damage_taken
execute if score $mini_type mem matches 7 run function mini:slime/game/damage_taken