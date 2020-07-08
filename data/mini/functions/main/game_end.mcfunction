# 小游戏结束
execute if score $mini_type mem matches 2 run function mini:tntrun/game_end

# 计算排名
scoreboard players set $mini_score_max mini_score -2147483648
execute as @a unless score @s mini_score matches -1 if score @s mini_score > $mini_score_max mini_score run scoreboard players operation $mini_score_max mini_score = @s mini_score
execute as @a unless entity @a[tag=mini_rank_1] if score @s mini_score = $mini_score_max mini_score run tag @s add mini_rank_1
scoreboard players set $mini_score_max mini_score -2147483648
execute as @a[tag=!mini_rank_1] unless score @s mini_score matches -1 if score @s mini_score > $mini_score_max mini_score run scoreboard players operation $mini_score_max mini_score = @s mini_score
execute as @a[tag=!mini_rank_1] unless entity @a[tag=mini_rank_2] if score @s mini_score = $mini_score_max mini_score run tag @s add mini_rank_2
scoreboard players set $mini_score_max mini_score -2147483648
execute as @a[tag=!mini_rank_1,tag=!mini_rank_2] unless score @s mini_score matches -1 if score @s mini_score > $mini_score_max mini_score run scoreboard players operation $mini_score_max mini_score = @s mini_score
execute as @a[tag=!mini_rank_1,tag=!mini_rank_2] unless entity @a[tag=mini_rank_3] if score @s mini_score = $mini_score_max mini_score run tag @s add mini_rank_3
tag @a[tag=!mini_rank_1,tag=!mini_rank_2,tag=!mini_rank_3] add mini_rank_4

# 进入状态 6
function ltw:state/6/state_enter