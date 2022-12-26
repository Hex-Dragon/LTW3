# 检查游戏是否可以结束

function mini:main/update_player_count
execute if score $state mem matches 5 if score $player_alive mem matches ..1 unless score $mini_type mem matches 1 run function mini:main/game_end