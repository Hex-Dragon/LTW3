# 尝试进行倒计时
execute if score $countdown mem matches 1.. if score $game_type mem matches 0 run function ltw:state/0/try_start_classic
execute if score $countdown mem matches 1.. if score $game_type mem matches 1 run function ltw:state/0/try_start_gameparty

# 显示倒计时，播放音效
execute if score $countdown mem matches 1.. run title @a times 3 14 2
execute if score $countdown mem matches 1.. run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches 1.. if score $game_type mem matches 0 run title @a title ["经典模式"]
execute if score $countdown mem matches 1.. if score $game_type mem matches 1 run title @a title ["小游戏模式"]
execute if score $countdown mem matches 1..9 run execute as @a at @s run function lib:sounds/hit2