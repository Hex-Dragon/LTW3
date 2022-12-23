scoreboard players add @s green 1
scoreboard players add @s green_total 1
scoreboard players add @s green_extra 1
execute if score $state mem matches 0 run function item:shop/refresh_green
execute at @s run function lib:sounds/levelup
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"1 绿宝石","color":"green"}," 完成奖励！"]