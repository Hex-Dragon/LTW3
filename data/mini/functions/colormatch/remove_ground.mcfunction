# 去除地板
execute positioned 1001 11 4000 run clone ~ ~ ~ ~24 ~ ~24 1050 15 4000

# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"text":" 时间到！","color":"white","bold": false}]
# 重置分数
scoreboard players set $countdown mem 5
scoreboard players set $color_match_type mem 1

# 预备下一轮
function mini:colormatch/prepare_round
