# 替换方块
execute at @e[type=armor_stand,tag=parkour_tempo,tag=tempo_red] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=parkour_tempo,tag=tempo_blue] run setblock ~ ~ ~ crimson_hyphae

# 播放音效 (1007 15 1051)(1010 10 1033)
execute at @e[type=armor_stand,tag=parkour_tempo] run playsound block.note_block.pling block @a[tag=parkour_portal] ~ ~ ~ 1 0.6