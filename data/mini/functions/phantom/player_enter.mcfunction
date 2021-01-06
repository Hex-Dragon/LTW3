# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
gamerule naturalRegeneration false

# 设置玩家生命
attribute @s generic.max_health base set 20

# 计分板重置
scoreboard players reset @s kill_phantom
scoreboard players reset @s kill_phantom2
scoreboard players set @s[team=playing,tag=!rejoining] kill_phantom 0
scoreboard players set @s[team=playing,tag=!rejoining] kill_phantom2 0
scoreboard players reset @s use_trident
scoreboard players reset @s countdown

# 传送玩家
tp @s[team=playing] 1030.5 24.5 6031.5

# 清理道具
clear @s #item:game_item{game_item:1b}
clear @s barrier{LockItem:1b}

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator