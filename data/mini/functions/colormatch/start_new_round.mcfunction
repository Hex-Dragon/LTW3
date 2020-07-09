# 替换墙壁
function mini:colormatch/replace_wall
# 复制地板
execute positioned 1000 10 4000 run clone ~ ~ ~ ~25 ~ ~25 1050 15 4000
# 设置倒计时
scoreboard players add $color_match_round mem 1
execute if score $color_match_round mem matches 2 run scoreboard players remove $color_match_time mem 1
execute if score $color_match_round mem matches 2 run scoreboard players set $color_match_round mem 0
scoreboard players operation $countdown mem = $color_match_time mem

# TODO 告知玩家是啥方块
# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"text":" 新的一轮开始了！","color":"white","bold": false}]

# 预备下一轮
function mini:colormatch/prepare_round