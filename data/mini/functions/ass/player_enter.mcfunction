# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_secret
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
function mini:ass/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration false

# 计分板重置
scoreboard players set @s countdown_fast 10
scoreboard players set @s creeperUse 0

# 传送玩家
spreadplayers 1016 7017 1 8 under 8 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]
