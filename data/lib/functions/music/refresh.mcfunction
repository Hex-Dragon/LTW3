# 立即切换为 @s 所指的 BGM
stopsound @s music

# lobby_1
playsound minecraft:music_disc.wait music @s[scores={music=1}] 0 1000000 0 1000000
scoreboard players set @s[scores={music=1}] music_time 231
# lobby_2
playsound minecraft:music_disc.stal music @s[scores={music=2}] 0 1000000 0 1000000
scoreboard players set @s[scores={music=2}] music_time 150

# mini_fast
playsound minecraft:music_disc.pigstep music @s[scores={music=11}] 0 1000000 0 1000000
scoreboard players set @s[scores={music=11}] music_time 148
# mini_middle
playsound minecraft:music_disc.cat music @s[scores={music=12}] 0 1000000 0 1000000
scoreboard players set @s[scores={music=12}] music_time 185
# mini_slow
playsound minecraft:music_disc.mellohi music @s[scores={music=13}] 0 1000000 0 1000000
scoreboard players set @s[scores={music=13}] music_time 96
# mini_secret
playsound minecraft:music_disc.ward music @s[scores={music=14}] 0 1000000 0 1000000
scoreboard players set @s[scores={music=14}] music_time 251

# rest（切换场景的间隙）
playsound minecraft:music_disc.mall music @s[scores={music=21}] 0 1000000 0 1000000
scoreboard players set @s[scores={music=21}] music_time 197
