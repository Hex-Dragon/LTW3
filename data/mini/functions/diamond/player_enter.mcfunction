# 单个玩家开始小游戏时执行
# TODO: 让 BGM 支持循环播放
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

effect clear @s
effect give @s saturation 1000000 0 true
effect give @s haste 1000000 1 true
gamerule naturalRegeneration false
spreadplayers 1010 5010 6 8 under 245 false @s[team=playing,tag=!rejoining]

# 设置玩家生命
attribute @s generic.max_health base set 20

# 计分板重置
tag @s remove diamond_got
scoreboard players reset @s diamond
scoreboard players set @s[team=playing,tag=!rejoining] diamond 0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]
