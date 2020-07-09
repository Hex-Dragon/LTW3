# 玩家失去一条命时调用此函数
# 减少命
execute if score @s mini_heart matches 1.. run scoreboard players remove @s mini_heart 1
# 计算血量
function mini:main/player_max_health
# 生命值归0判定失败
execute if score @s mini_heart matches 0 run function mini:main/player_failed
