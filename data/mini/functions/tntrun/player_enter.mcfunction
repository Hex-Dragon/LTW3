# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s resistance 1000000 4 true

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
spreadplayers 1019.5 2020.5 2 2 false @s[tag=!watcher,tag=!rejoining,tag=!debug]
# schedule: tp @a ~ ~-3 ~

# 两秒后才开始 TNT 掉落
tag @s remove tntrun_pc
# schedule: tag @a add tntrun_pc

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:tntrun/player_failed