# 检查游戏是否可以结束

function mini:main/update_player_count

execute if score $state mem matches 5 if score $finish_mode mem matches 1 if score $player_finish mem matches 3.. run function mini:main/game_end
execute if score $state mem matches 5 if score $player_alive mem matches ..1 run function mini:main/game_end