# 节奏方块触发
execute if score $countdown_fast mem matches 0 run function mini:parkour/game/tempo_block
execute unless score $countdown_fast mem matches 1.. run scoreboard players set $countdown_fast mem 15

# 音效
execute if score $countdown_fast mem matches 5 run playsound block.note_block.snare block @a 1005 15 1051 0.6 2
execute if score $countdown_fast mem matches 5 run playsound block.note_block.snare block @a 1008 10 1033 0.6 2
execute if score $countdown_fast mem matches 10 run playsound block.note_block.snare block @a 1005 15 1051 0.6 2
execute if score $countdown_fast mem matches 10 run playsound block.note_block.snare block @a 1008 10 1033 0.6 2