scoreboard players add @s green 3
scoreboard players add @s green_total 3
scoreboard players add @s green_extra 3
execute if score $state mem matches 0 run function item:shop/refresh_green
# MC 自己会播放完成音效
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"3 绿宝石","color":"green"}," 完成奖励！"]