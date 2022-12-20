
# 触发单个模块
execute if score $mini_type mem matches 1 run function mini:parkour/tick20
execute if score $mini_type mem matches 3 run function mini:hotpm/tick20
execute if score $mini_type mem matches 4 run function mini:colormatch/tick20
execute if score $mini_type mem matches 5 run function mini:phantom/tick20
execute if score $mini_type mem matches 201 run function mini:ass/tick20
execute if score $mini_type mem matches 101 run function mini:iron/tick20
execute if score $mini_type mem matches 102 run function mini:trade/tick20

# 结束游戏判定
function mini:main/check_game_end