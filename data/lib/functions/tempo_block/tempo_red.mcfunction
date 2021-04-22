# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/sp/tempo_block/tempo_red

# TODO: 未完成的重构
execute if score $state mem matches 5 if score $mini_type mem matches 1 run function mini:parkour/game/tempo_red
