# 单个玩家开始小游戏时执行
gamemode creative
title @s clear

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 传送玩家
spreadplayers 1011.5 2011.5 7 7 false @s[tag=!watcher,tag=!rejoining]
execute if entity @s[tag=!watcher,tag=!rejoining] run schedule function mini:tntrun/player_enter2 1t replace
# schedule: tp @a ~ ~-3 ~

# 两秒后才开始 TNT 掉落
tag @s remove tntrun_pc
execute if entity @s[tag=!watcher,tag=!rejoining] run schedule function mini:tntrun/player_enter3 2s replace
# schedule: tag @a add tntrun_pc

# 调整模式
gamemode spectator @s
gamemode adventure @s[tag=!watcher,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:tntrun/player_failed