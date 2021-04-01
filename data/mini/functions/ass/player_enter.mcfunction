# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_secret
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 2 true

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration false


# 计分板重置
scoreboard players set @s countdown_fast 50
scoreboard players set @s creeperUse 0

# 传送玩家
spreadplayers 1015 7015 1 12 under 15 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]
