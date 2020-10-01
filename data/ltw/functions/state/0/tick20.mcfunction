# 尝试进行倒计时
execute if score $countdown mem matches 1.. if score $game_type mem matches 0 run function ltw:state/0/try_start_classic
execute if score $countdown mem matches 1.. if score $game_type mem matches 1 run function ltw:state/0/try_start_gameparty

# 显示倒计时，播放音效
execute store result score $count mem if entity @a[tag=lobby_ready]
execute if score $countdown mem matches 1.. run title @a times 3 14 2
scoreboard players operation #time mem = $countdown mem
scoreboard players remove #time mem 1
execute if score $countdown mem matches 1.. run title @a subtitle [{"score":{"name":"#time","objective":"mem"}}," 秒 | ",{"score":{"name":"$count","objective":"mem"}}," 人"]
execute if score $countdown mem matches 1.. run title @a title [""]
execute if score $countdown mem matches 1..10 run execute as @a at @s run function lib:sounds/hit2
