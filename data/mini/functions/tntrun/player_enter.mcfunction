# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 传送玩家
spreadplayers 1011.5 2011.5 4 4 false @s[tag=!watcher,tag=!rejoining]
# schedule: tp @a ~ ~-3 ~

# 两秒后才开始 TNT 掉落
tag @s remove tntrun_pc
# schedule: tag @a add tntrun_pc

# 调整模式
gamemode spectator @s
gamemode adventure @s[tag=!watcher,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:tntrun/player_failed