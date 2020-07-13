
# 触发单个模块
execute if score $mini_type mem matches 5 run function mini:zombie/tick20

# 结束游戏判定
function mini:main/check_game_end