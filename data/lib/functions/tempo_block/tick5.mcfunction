
# 倒计时（后续为 0~5，即 1.5s 一轮）
execute if score $countdown_tempo mem matches 0 run scoreboard players set $countdown_tempo mem 6
execute if score $countdown_tempo mem matches 1.. run scoreboard players remove $countdown_tempo mem 1

# 触发与音效
execute if score $countdown_tempo mem matches 0 run function lib:tempo_block/block_exchange
execute if score $countdown_tempo mem matches 2 run function lib:tempo_block/tempo_sound
execute if score $countdown_tempo mem matches 4 run function lib:tempo_block/tempo_sound