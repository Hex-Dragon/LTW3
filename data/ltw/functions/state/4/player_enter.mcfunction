# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
gamemode creative
title @s clear
title @s actionbar []

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true

# 播放音效
function lib:sounds/travel

# 显示小游戏介绍
function mini:main/player_intro

# 自由旁观
gamemode spectator
spectate
