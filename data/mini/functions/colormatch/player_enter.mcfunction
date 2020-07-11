# 单个玩家开始小游戏时执行
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 传送玩家
tp @s[tag=!watcher,tag=!rejoining] 1062 16.5 4012

# 调整模式
gamemode spectator @s
gamemode adventure @s[tag=!watcher,tag=!rejoining]

# 设置玩家生命数量
scoreboard players set @s[tag=!watcher,tag=!rejoining] mini_heart 3
scoreboard players reset @s[tag=!watcher,tag=rejoining] mini_heart
function mini:main/player_max_health

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed

# FIXME : [010/HIM] 玩家掉线后，如果场上没有土豆，就再生成一次，以免游戏无法继续（玩家和土豆一起掉线.jpg）