scoreboard players add @s green 4
scoreboard players add @s green_total 4
execute if score $state mem matches 0 run function item:shop/refresh_green
# MC 自己会播放完成音效