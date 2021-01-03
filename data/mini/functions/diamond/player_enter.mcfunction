# 单个玩家开始小游戏时执行
# TODO: 让 BGM 支持循环播放
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration false

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
spreadplayers 1010 6010 4 6 under 255 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]
