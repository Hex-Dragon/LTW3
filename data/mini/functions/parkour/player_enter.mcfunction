# 单个玩家开始小游戏时执行
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 传送玩家
tp @s[tag=!watcher,tag=!rejoining] 1005 15 1005

# 调整模式
gamemode spectator @s
gamemode adventure @s[tag=!watcher,tag=!rejoining]