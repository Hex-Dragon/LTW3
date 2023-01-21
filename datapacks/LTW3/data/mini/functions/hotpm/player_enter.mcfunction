# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:hotpm/give_effect

# 设置玩家生命
scoreboard players set @s[team=playing,tag=!rejoining] mini_heart 3
function mini:main/player_max_health
gamerule naturalRegeneration true

# 清理 Tag
tag @s remove pm_holding
tag @s remove pm_damage_dealt
tag @s remove pm_damage_taken
tag @s remove pm_explode_last

# 传送玩家
tp @s[team=playing,tag=!rejoining] 1018.0 8 3015.0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed
