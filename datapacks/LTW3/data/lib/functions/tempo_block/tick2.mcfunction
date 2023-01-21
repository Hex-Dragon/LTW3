# 节奏方块触发
execute if score $countdown_fast mem matches 0 run function lib:tempo_block/block_exchange
execute unless score $countdown_fast mem matches 1.. run scoreboard players set $countdown_fast mem 15

# 播放音效
execute if score $countdown_fast mem matches 5 run function lib:tempo_block/tempo_sound
execute if score $countdown_fast mem matches 10 run function lib:tempo_block/tempo_sound