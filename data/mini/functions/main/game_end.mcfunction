# 小游戏结束
execute if score $mini_type mem matches 1 run function mini:parkour/game_end
execute if score $mini_type mem matches 2 run function mini:tntrun/game_end

# 计算排名
#1
function mini:main/get_max_score
execute as @a unless entity @a[tag=mini_rank1] if score @s mini_score = $t_score_max mini_score run tag @s add mini_rank1
scoreboard players reset @a[tag=mini_rank1] mini_score
#2
function mini:main/get_max_score
execute as @a[tag=!mini_rank1] unless entity @a[tag=mini_rank2] if score @s mini_score = $t_score_max mini_score run tag @s add mini_rank2
scoreboard players reset @a[tag=mini_rank2] mini_score
#3
function mini:main/get_max_score
execute as @a[tag=!mini_rank1,tag=!mini_rank2] unless entity @a[tag=mini_rank3] if score @s mini_score = $t_score_max mini_score run tag @s add mini_rank3
scoreboard players reset @a[tag=mini_rank3] mini_score
#4
tag @a[tag=!mini_rank1,tag=!mini_rank2,tag=!mini_rank3] add mini_rank4

# 进入状态 6
function ltw:state/6/state_enter