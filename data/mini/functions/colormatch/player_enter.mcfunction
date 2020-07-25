# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 设置玩家生命
scoreboard players set @s[tag=!watcher,tag=!rejoining] mini_heart 3
function mini:main/player_max_health

# 传送玩家
tp @s[tag=!watcher,tag=!rejoining,tag=!debug] 1062 16.5 4012

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed