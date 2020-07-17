# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s blindness 1000000 0 true

# 音效
execute at @s run function lib:sounds/levelup

# 自由旁观
gamemode spectator @s
spectate
