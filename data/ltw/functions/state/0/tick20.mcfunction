# 尝试进行倒计时
execute if score $countdown mem matches 1.. run function ltw:state/0/try_start_gameparty

# 计算倒计时，播放音效
scoreboard players operation #time mem = $countdown mem
scoreboard players remove #time mem 1
execute if score $countdown mem matches 1..10 run execute as @a at @s run function lib:sounds/hit2
