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

# 播放音效
execute at @s run function lib:sounds/travel

# 自由旁观
gamemode spectator
spectate

# FIXME : 如果玩家在奖励选择阶段重连，玩家应该跳过此次奖励选择