# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 给予状态效果
function mini:tntrun/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration true

# 传送玩家
spreadplayers 1019.5 2020.5 2 2 false @s[team=playing,tag=!rejoining]

# 清理 tag
tag @s remove layer_bottom

# 两秒后才开始 TNT 掉落
tag @s remove tntrun_pc
# schedule: tag @a add tntrun_pc

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:tntrun/player_failed