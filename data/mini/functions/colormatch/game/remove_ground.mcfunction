# 去除地板
execute positioned 1001 11 4000 run clone ~ ~ ~ ~24 ~ ~24 1050 15 4000

# 告知玩家
execute as @a at @s run function lib:sounds/hit2

# 重置分数
scoreboard players set $countdown_fast mem 28
scoreboard players operation $countdown_fast mem < $color_match_time mem
scoreboard players remove $countdown_fast mem 3
scoreboard players set $color_match_type mem 1

# 预备下一轮
function mini:colormatch/game/prepare_round

# FIXME : <! 严重> [HIM] 如果两个人同时打一个人疑似导致土豆消失
# FIXME : [010/HIM] 史莱姆贴墙