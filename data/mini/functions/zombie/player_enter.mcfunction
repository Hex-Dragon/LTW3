# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
gamerule naturalRegeneration false
effect give @s night_vision 1000000 0 true

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
tp @s[tag=!debug] 1010.5 12 5013.0

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:zombie/player_failed