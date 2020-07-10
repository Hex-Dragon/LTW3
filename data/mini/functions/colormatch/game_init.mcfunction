# 初始化地图
forceload add 1001 4000 1075 4025
fill 1049 10 4025 1075 10 3999 minecraft:bedrock
fill 1074 11 4000 1050 11 4024 lava
fill 1074 15 4000 1050 15 4024 stone
fill 1075 11 3999 1075 40 4025 stone
fill 1075 11 3999 1049 40 3999 stone
fill 1049 11 3999 1049 40 4025 stone
fill 1049 11 4025 1075 40 4025 stone
fill 1074 30 4024 1050 30 4000 barrier

# 设置分数
scoreboard players set $color_match_time mem 70

# 设置模式为地板消失
scoreboard players set $color_match_type mem 0

# 刷新地基
function mini:colormatch/game/prepare_round
schedule function mini:colormatch/game_init2 18t replace

# 关闭伤害
gamerule fallDamage false
gamerule fireDamage false