# 切换计分板显示
scoreboard players add $scb_switch rgb_sys 1
execute if score $scb_switch rgb_sys matches 6.. run scoreboard players set $scb_switch rgb_sy 0

execute if score $scb_switch rgb_sys matches 0..1 run scoreboard objectives setdisplay sidebar rgb_R
execute if score $scb_switch rgb_sys matches 2..3 run scoreboard objectives setdisplay sidebar rgb_G
execute if score $scb_switch rgb_sys matches 4..5 run scoreboard objectives setdisplay sidebar rgb_B