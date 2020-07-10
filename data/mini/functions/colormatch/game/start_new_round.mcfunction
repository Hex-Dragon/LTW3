# 替换墙壁
function mini:colormatch/game/replace_wall
# 复制地板
execute positioned 1001 10 4000 run clone ~ ~ ~ ~24 ~ ~24 1050 15 4000

# 设置倒计时
execute if score $color_match_time mem matches 42.. run scoreboard players remove $color_match_time mem 5
execute if score $color_match_time mem matches 21..41 run scoreboard players remove $color_match_time mem 1
scoreboard players operation $countdown_fast mem = $color_match_time mem

# 重置分数
scoreboard players set $color_match_type mem 0

# 告知玩家
execute as @a at @s run function lib:sounds/hit
# tellraw @a [{"text":">> ","color":"gold","bold": true},{"text":"新的一轮开始了！","color":"white","bold": false}]
