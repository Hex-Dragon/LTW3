# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 给予状态效果
function mini:phantom/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration false

# 计分板重置
scoreboard players reset @s kill_phantom
scoreboard players reset @s kill_phantom2
scoreboard players set @s[team=playing,tag=!rejoining] kill_phantom 0
scoreboard players set @s[team=playing,tag=!rejoining] kill_phantom2 0
scoreboard players set @s[team=playing,tag=!rejoining] countdown_fast 0
scoreboard players reset @s use_trident
scoreboard players reset @s countdown

# 传送玩家
spreadplayers 1030 6031 3 3 under 18 false @s[team=playing]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator