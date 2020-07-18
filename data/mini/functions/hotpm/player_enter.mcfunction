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

# 清理 Tag
tag @s remove pm_holding
tag @s remove pm_damage_dealt
tag @s remove pm_damage_taken

# 传送玩家
spreadplayers 1023 3021 5 5 false @s[tag=!watcher,tag=!rejoining,tag=!debug]
execute if entity @s[tag=!watcher,tag=!rejoining] run schedule function mini:hotpm/player_enter2 1t replace

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 设置玩家生命数量
scoreboard players set @s[tag=!watcher,tag=!rejoining] mini_heart 2
scoreboard players reset @s[tag=!watcher,tag=rejoining] mini_heart
function mini:main/player_max_health

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed