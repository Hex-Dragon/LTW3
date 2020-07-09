# 单个玩家开始小游戏时执行
title @s clear
gamemode creative

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 传送玩家
tp @s[tag=!watcher] 1005 15 1005

# 调整模式
gamemode adventure @s[tag=!watcher]
gamemode spectator @s[tag=watcher]