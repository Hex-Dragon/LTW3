
scoreboard players remove @a music_time 1

# lobby
execute if score $music_id mem matches 1 run playsound minecraft:music_disc.wait music @a[scores={music_time=..0}] 0 1000000 0 1000000
execute if score $music_id mem matches 1 run scoreboard players set @a[scores={music_time=..0}] music_time 231
# mini_fast
execute if score $music_id mem matches 2 run playsound minecraft:music_disc.pigstep music @a[scores={music_time=..0}] 0 1000000 0 1000000
execute if score $music_id mem matches 2 run scoreboard players set @a[scores={music_time=..0}] music_time 148
# mini_middle
execute if score $music_id mem matches 3 run playsound minecraft:music_disc.cat music @a[scores={music_time=..0}] 0 1000000 0 1000000
execute if score $music_id mem matches 3 run scoreboard players set @a[scores={music_time=..0}] music_time 185
# mini_slow
execute if score $music_id mem matches 4 run playsound minecraft:music_disc.mellohi music @a[scores={music_time=..0}] 0 1000000 0 1000000
execute if score $music_id mem matches 4 run scoreboard players set @a[scores={music_time=..0}] music_time 96
# rest
execute if score $music_id mem matches 5 run playsound minecraft:music_disc.mall music @a[scores={music_time=..0}] 0 1000000 0 1000000
execute if score $music_id mem matches 5 run scoreboard players set @a[scores={music_time=..0}] music_time 197
