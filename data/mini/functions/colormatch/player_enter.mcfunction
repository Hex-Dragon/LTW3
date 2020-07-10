# 单个玩家开始小游戏时执行
gamemode creative
title @s clear

# 重置tag
tag @s remove color_match_fall

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true
effect give @s slow_falling 1000000 0 true

# 传送玩家
tp @s[tag=!watcher,tag=!rejoining] 1062 20 4012

# 调整模式
gamemode spectator @s
gamemode adventure @s[tag=!watcher,tag=!rejoining]

# 设置玩家生命数量
scoreboard players set @s mini_heart 3
function mini:main/player_max_health

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:hotpm/player_lose_heart
# TODO 旁观者应该直接让生命值清零
# TODO 测试方法存在问题……等我修（龙猫
