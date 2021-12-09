# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_secret
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s night_vision 1000000 0 true

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration false


# 计分板重置
scoreboard players set @s rgb_R 0
scoreboard players set @s rgb_G 0
scoreboard players set @s rgb_B 0

# 传送玩家
spreadplayers 1026 8012 8 16 under 30 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]
