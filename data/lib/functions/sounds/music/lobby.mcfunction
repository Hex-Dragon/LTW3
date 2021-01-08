# 播放主大厅 BGM
# 首次 3'51，循环 2'30

function lib:sounds/music/stop
scoreboard players set $music_id mem 1
scoreboard players set @s music_time 231
playsound minecraft:music_disc.wait music @s 0 1000000 0 1000000