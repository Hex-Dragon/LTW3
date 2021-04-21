scoreboard players add @s green 3
scoreboard players add @s green_total 3
execute if score $state mem matches 0 run function item:shop/refresh_green
# MC 自己会播放完成音效