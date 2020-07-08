# 单个玩家开始小游戏时执行
tag @s add mini_running
scoreboard players set @s mini_score 0
execute if score $mini_type mem matches 2 run function mini:tntrun/player_enter