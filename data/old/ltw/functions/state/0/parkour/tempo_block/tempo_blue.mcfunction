# 替换方块
execute at @e[type=armor_stand,tag=lobby_tempo,tag=tempo_red_t] run setblock ~ ~0.4 ~ air
execute at @e[type=armor_stand,tag=lobby_tempo,tag=tempo_blue_t] run setblock ~ ~0.4 ~ warped_hyphae
execute at @e[type=armor_stand,tag=lobby_tempo,tag=tempo_red_r] run setblock ~ ~0.4 ~ black_glazed_terracotta
execute at @e[type=armor_stand,tag=lobby_tempo,tag=tempo_blue_r] run setblock ~ ~0.4 ~ redstone_block

# 播放音效
execute at @e[type=armor_stand,tag=lobby_tempo] run playsound block.note_block.pling block @a[distance=..7] ~ ~0.4 ~ 0.5 0.6