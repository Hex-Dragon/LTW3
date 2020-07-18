# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s resistance 1000000 4 true

# 传送玩家
tp @s[tag=!watcher,tag=!rejoining,tag=!debug] 1010.07 7.50 1006.98 -1518.69 -10.62

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 修改 Tag
tag @s add parkour_portal
tag @s[tag=!watcher,tag=!rejoining] remove parkour_portal
