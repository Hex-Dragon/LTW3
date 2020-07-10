# 单个玩家开始小游戏时执行

tag @s remove mini_running
tag @s[tag=!rejoining,tag=!watcher] add mini_running
scoreboard players set @s mini_score 0
scoreboard players set @s[tag=rejoining] mini_score -1000
scoreboard players set @s[tag=watcher] mini_score -1000000
function mini:main/update_player_count

execute if score $mini_type mem matches 1 run function mini:parkour/player_enter
execute if score $mini_type mem matches 2 run function mini:tntrun/player_enter
execute if score $mini_type mem matches 3 run function mini:hotpm/player_enter
execute if score $mini_type mem matches 4 run function mini:colormatch/player_enter