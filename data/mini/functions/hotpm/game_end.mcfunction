
# 清理残余实体
function mini:main/kill_entity
# 分数结算
scoreboard players add @a[tag=mini_running] surviveRound 1
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s surviveRound
# 结束热土豆
forceload remove 1000 3000 1100 3100
