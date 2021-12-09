# 切换计分板显示
scoreboard players add $scb_switch rgb_sys 1
execute if score $scb_switch rgb_sys matches 9.. run scoreboard players set $scb_switch rgb_sys 0

execute if score $scb_switch rgb_sys matches 0..2 run scoreboard objectives setdisplay sidebar rgb_R
execute if score $scb_switch rgb_sys matches 3..5 run scoreboard objectives setdisplay sidebar rgb_G
execute if score $scb_switch rgb_sys matches 6..8 run scoreboard objectives setdisplay sidebar rgb_B