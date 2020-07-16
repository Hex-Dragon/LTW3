# 节奏方块触发
execute if score $countdown_fast mem matches 0 run function mini:parkour/game/tempo_block
execute unless score $countdown_fast mem matches 1.. run scoreboard players set $countdown_fast mem 15

# 音效
execute if score $countdown_fast mem matches 5 run playsound block.note_block.snare block @a[tag=parkour_portal] 1007 15 1051 1 2
execute if score $countdown_fast mem matches 5 run playsound block.note_block.snare block @a[tag=parkour_portal] 1010 10 1033 1 2
execute if score $countdown_fast mem matches 10 run playsound block.note_block.snare block @a[tag=parkour_portal] 1007 15 1051 1 2
execute if score $countdown_fast mem matches 10 run playsound block.note_block.snare block @a[tag=parkour_portal] 1010 10 1033 1 2

# 传送门粒子
execute if score $parkour_door mem matches 0 run particle reverse_portal 1009 28 1031 1 2 1 0.1 50
execute if score $parkour_door mem matches 1 run particle portal 1014.5 21.5 1057.0 0 1.5 1 1 15
