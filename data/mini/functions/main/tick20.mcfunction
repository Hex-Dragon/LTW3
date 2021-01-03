
# 触发单个模块
execute if score $mini_type mem matches 1 run function mini:parkour/tick20
execute if score $mini_type mem matches 5 run function mini:phantom/tick20
execute if score $mini_type mem matches 6 run function mini:diamond/tick20

# 结束游戏判定
function mini:main/check_game_end