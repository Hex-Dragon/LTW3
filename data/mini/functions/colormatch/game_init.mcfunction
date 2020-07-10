# 初始化地图
forceload add 1001 4000 1075 4025
fill 1049 10 4025 1075 10 3999 bedrock
fill 1074 11 4000 1050 11 4024 magma_block
fill 1074 15 4000 1050 15 4024 stone
fill 1074 25 4000 1050 25 4024 barrier
fill 1075 11 3999 1075 40 4025 stone
fill 1075 11 3999 1049 40 3999 stone
fill 1049 11 3999 1049 40 4025 stone
fill 1049 11 4025 1075 40 4025 stone

# 初始化
scoreboard players set $finish_mode mem 0
scoreboard players set $color_match_time mem 60
scoreboard players set $color_match_type mem 0

# 刷新地基
function mini:colormatch/game/prepare_round
schedule function mini:colormatch/game_init2 18t replace

# 关闭伤害
gamerule fallDamage false