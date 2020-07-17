# 更新当前选择的小游戏状态
execute if score $game_type mem matches 0 run fill 14 15 1 19 11 6 minecraft:crimson_hyphae replace minecraft:warped_hyphae
execute if score $game_type mem matches 1 run fill 14 15 1 19 11 6 minecraft:warped_hyphae replace minecraft:crimson_hyphae