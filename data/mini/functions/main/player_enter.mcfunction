# 单个玩家开始小游戏时执行

tag @s remove mini_running
tag @s[tag=!rejoining,team=playing] add mini_running
scoreboard players set @s mini_score 0
scoreboard players set @s[tag=rejoining] mini_score -1000
scoreboard players set @s[team=watching] mini_score -1000000
function mini:main/update_player_count

clear @s #mini:game_item{game_item:1b}
clear @s red_dye{LockItem:1b}
recipe take @s *

execute if score $mini_type mem matches 1 run function mini:parkour/player_enter
execute if score $mini_type mem matches 2 run function mini:tntrun/player_enter
execute if score $mini_type mem matches 3 run function mini:hotpm/player_enter
execute if score $mini_type mem matches 4 run function mini:colormatch/player_enter
execute if score $mini_type mem matches 5 run function mini:phantom/player_enter
execute if score $mini_type mem matches 201 run function mini:ass/player_enter
execute if score $mini_type mem matches 202 run function mini:rgb/player_enter
execute if score $mini_type mem matches 101 run function mini:diamond/player_enter
execute if score $mini_type mem matches 102 run function mini:trade/player_enter