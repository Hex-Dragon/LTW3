# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 传送玩家
tp @s 7.0 11.4 2007.0 0 0
execute at @s run function lib:sounds/travel

# 清除 Tag
tag @s[tag=watcher] remove mini_rank1
tag @s[tag=watcher] remove mini_rank2
tag @s[tag=watcher] remove mini_rank3
tag @s[tag=watcher] remove mini_rank4
tag @s[tag=rejoining] remove mini_rank1
tag @s[tag=rejoining] remove mini_rank2
tag @s[tag=rejoining] remove mini_rank3
tag @s[tag=rejoining] remove mini_rank4
tag @s remove selecting

# 自由旁观
gamemode spectator
spectate
