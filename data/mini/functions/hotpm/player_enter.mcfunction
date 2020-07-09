# 单个玩家开始小游戏时执行
title @s clear
gamemode creative

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 清理 Tag
tag @s remove pm_hoding
tag @s remove pm_damage_dealt
tag @s remove pm_damage_taken

# 调整模式
gamemode adventure @s[tag=!watcher]
gamemode spectator @s[tag=watcher]

# 传送玩家
spreadplayers 1023 3021 5 5 false @s[tag=!watcher]
schedule function mini:hotpm/player_enter2 1t replace
# schedule: tp @a ~ 25 ~

# 3秒后给予土豆
schedule function mini:hotpm/pm_init_first 3s replace
# TODO 灭火无效