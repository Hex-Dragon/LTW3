# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 解锁配方
recipe give @s[team=playing] *

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration false

# 计分板重置
scoreboard players reset * emerald
scoreboard players set @s[team=playing,tag=!rejoining] emerald 0

# 调整模式
gamemode spectator @s[team=!debug]
gamemode survival @s[team=playing,tag=!rejoining]

# 执行重生方法
tag @s remove respawning
function mini:trade/game/respawn
