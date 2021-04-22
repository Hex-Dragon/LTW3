# 当玩家死亡后触发

# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/player_enter

# TODO: 未完成的重构
# execute if score $state mem matches 5 run function ltw:state/5/player_death
