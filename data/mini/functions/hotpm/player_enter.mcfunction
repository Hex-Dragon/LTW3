# 单个玩家开始小游戏时执行
title @s clear
gamemode creative

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 清理 Tag
tag @s remove pm_hoding
tag @s remove pm_damage_dealt
tag @s remove pm_damage_taken

# 传送玩家
spreadplayers 1023 3021 5 5 false @s[tag=!watcher,tag=!rejoining]
execute if entity @s[tag=!watcher,tag=!rejoining] run schedule function mini:hotpm/player_enter2 1t replace

# 调整模式
gamemode spectator @s
gamemode adventure @s[tag=!watcher,tag=!rejoining]

# 设置玩家生命数量
scoreboard players set @s mini_heart 3
function mini:main/player_max_health

# 3秒后给予土豆
execute if entity @s[tag=!watcher,tag=!rejoining] run schedule function mini:hotpm/pm_init_first 3s replace
# TODO 灭火无效

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:hotpm/player_failed