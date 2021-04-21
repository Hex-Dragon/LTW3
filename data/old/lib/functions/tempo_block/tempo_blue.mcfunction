# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/parkour/tempo_block/tempo_blue
execute if score $state mem matches 5 if score $mini_type mem matches 1 run function mini:parkour/game/tempo_blue

# Debug调用
execute if score $tempo_debug mem matches 1 run function lib:tempo_block/tempo_blue_debug