# 小游戏结束
execute if score $mini_type mem matches 1 run function mini:parkour/game_end
execute if score $mini_type mem matches 2 run function mini:tntrun/game_end
execute if score $mini_type mem matches 3 run function mini:hotpm/game_end

# 计算排名
tag @a remove mini_rank1
tag @a remove mini_rank2
tag @a remove mini_rank3
tag @a remove mini_rank4
# 1
scoreboard players set $t_score_max mini_score -2147483648
execute as @a run function mini:main/get_max_score
execute as @a unless entity @a[tag=mini_rank1] if score @s mini_score = $t_score_max mini_score run tag @s add mini_rank1
# 2
scoreboard players set $t_score_max mini_score -2147483648
execute as @a[tag=!mini_rank1] run function mini:main/get_max_score
execute as @a[tag=!mini_rank1] unless entity @a[tag=mini_rank2] if score @s mini_score = $t_score_max mini_score run tag @s add mini_rank2
# 3
scoreboard players set $t_score_max mini_score -2147483648
execute as @a[tag=!mini_rank1,tag=!mini_rank2] run function mini:main/get_max_score
execute as @a[tag=!mini_rank1,tag=!mini_rank2] unless entity @a[tag=mini_rank3] if score @s mini_score = $t_score_max mini_score run tag @s add mini_rank3
# 4
tag @a[tag=!mini_rank1,tag=!mini_rank2,tag=!mini_rank3,tag=!watcher] add mini_rank4

# 重置玩家血量上限
execute as @a run attribute @s generic.max_health base set 20

# 进入状态 6
function ltw:state/6/state_enter