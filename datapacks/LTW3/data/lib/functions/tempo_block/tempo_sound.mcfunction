# 调用其他模块（播放声音）
execute if score $state mem matches 0 run function ltw:state/0/parkour/tempo_sound
execute if score $state mem matches 5 if score $mini_type mem matches 1 run function mini:parkour/game/tempo_sound

# Debug 调用
execute if score $tempo_debug mem matches 1 run function lib:tempo_block/debug_sound