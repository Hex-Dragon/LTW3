# 玩家失去一条命时调用此函数

# 减少命
execute if score @s mini_heart matches 1.. run scoreboard players remove @s mini_heart 1
execute at @s run function lib:sounds/hurt
# 计算血量
function mini:main/player_max_health
# 判定失败
execute if score @s mini_heart matches 0 run function mini:main/player_failed
