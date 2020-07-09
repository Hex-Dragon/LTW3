# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
gamemode creative

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 传送玩家
tp @s[tag=!watcher] 7.0 11.4 2007.0 0 0

# 调整模式
gamemode spectator @s