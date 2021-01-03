# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 设置玩家生命
scoreboard players set @s[team=!watching,tag=!rejoining] mini_heart 3
function mini:main/player_max_health

# 清理 Tag
tag @s remove pm_holding
tag @s remove pm_damage_dealt
tag @s remove pm_damage_taken
tag @s remove pm_explode_last


# 传送玩家
tp @s[team=playing,tag=!rejoining] 1023 25 3021
# spreadplayers 1023 3021 5 5 false @s[team=playing,tag=!rejoining]
# schedule function mini:hotpm/player_enter2 1t replace
# execute as @a[team=playing,tag=!rejoining] at @s run tp @s ~ 25 ~

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed
