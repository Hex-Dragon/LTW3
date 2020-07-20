# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
gamerule naturalRegeneration false

# 计分板重置
scoreboard players reset @s kill_phantom
scoreboard players reset @s use_trident
scoreboard players reset @s countdown

# 传送玩家
tp @s[tag=!debug] 1030.5 24.5 6031.5

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator