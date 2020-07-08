# 小游戏结束
execute if score $mini_type mem matches 1 run function mini:parkour/game_end
execute if score $mini_type mem matches 2 run function mini:tntrun/game_end

# 计算排名
tag @a[scores={mini_score=0}] add mini_rank1
tag @a[scores={mini_score=-1}] add mini_rank2
tag @a[scores={mini_score=-2}] add mini_rank3
tag @a[scores={mini_score=..-3}] add mini_rank4
say test
# 进入状态 6
function ltw:state/6/state_enter