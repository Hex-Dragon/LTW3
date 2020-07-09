# 单个玩家开始小游戏时执行
title @s clear
gamemode adventure @s

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

# 关闭伤害
gamerule fallDamage false

# 传送玩家
spreadplayers 1023 3021 5 5 false @s
schedule function mini:hotpm/player_enter2 1t replace
# schedule: tp @a ~ 25 ~

# 给与土豆
schedule function mini:hotpm/pm_init_init 5s replace