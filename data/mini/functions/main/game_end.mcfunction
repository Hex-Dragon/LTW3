# 小游戏结束
execute if score $mini_type mem matches 1 run function mini:parkour/game_end
execute if score $mini_type mem matches 2 run function mini:tntrun/game_end
execute if score $mini_type mem matches 3 run function mini:hotpm/game_end
execute if score $mini_type mem matches 4 run function mini:colormatch/game_end
execute if score $mini_type mem matches 5 run function mini:phantom/game_end
execute if score $mini_type mem matches 201 run function mini:ass/game_end
execute if score $mini_type mem matches 101 run function mini:iron/game_end
execute if score $mini_type mem matches 102 run function mini:trade/game_end

# 计算排名
tag @a remove mini_rank1
tag @a remove mini_rank2
tag @a remove mini_rank3
tag @a remove mini_rank4
# 1
function mini:main/get_max_score
execute as @a if score @s mini_score = #score_max mem run tag @s[team=playing] add mini_rank1
tag @a[tag=mini_rank1] add max_uncounted
# 2
function mini:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s mini_score = #score_max mem run tag @s[team=playing] add mini_rank2
tag @a[tag=mini_rank2] add max_uncounted
# 3
function mini:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s mini_score = #score_max mem run tag @s[team=playing] add mini_rank3
tag @a[tag=max_uncounted] remove max_uncounted
# 4
tag @a[tag=!mini_rank1,tag=!mini_rank2,tag=!mini_rank3,team=playing] add mini_rank4

# 给予进度
execute if score $mini_type mem matches 2 run advancement grant @a[tag=mini_rank1,scores={layer=2..}] only ltw:parkour/tnt1
execute if score $mini_type mem matches 3 run advancement grant @a[tag=mini_rank1,scores={mini_heart=2..}] only ltw:vs/potato1
execute if score $mini_type mem matches 3 run advancement grant @a[tag=mini_rank1,scores={mini_heart=3..}] only ltw:vs/potato2
execute if score $mini_type mem matches 3 run advancement grant @a[tag=mini_rank1,scores={mini_heart=5..}] only ltw:vs/potato3
execute if score $mini_type mem matches 4 if score #max_speed mem matches 1 run advancement grant @a[tag=mini_rank1,scores={mini_heart=2..}] only ltw:parkour/colormatch2
execute if score $mini_type mem matches 4 if score #max_speed mem matches 1 run advancement grant @a[tag=mini_rank1,tag=!colormatch_hurt] only ltw:parkour/colormatch3
execute if score $mini_type mem matches 201 if score $countdown mem matches 1.. run advancement grant @a[tag=mini_rank1] only ltw:blood/ass1
execute if score $mini_type mem matches 201 run advancement grant @a[tag=mini_rank1,scores={health_disp=10..}] only ltw:blood/ass2
execute if score $mini_type mem matches 201 run advancement grant @a[tag=mini_rank1,scores={health_disp=20..}] only ltw:blood/ass3

# 清理怪东西
clear @a[team=!debugging] #mini:game_item{game_item:1b}

# 进入状态 6
function ltw:state/6/state_enter