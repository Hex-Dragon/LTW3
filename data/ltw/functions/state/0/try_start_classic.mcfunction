# 尝试开始晶石模式
tellraw @a[tag=hub_ready] ["",{"text": ">> ","color":"red","bold": true},{"text": "晶石模式尚未完成, 请开始派对模式!","color":"red"}]
execute as @a[tag=hub_ready] at @s run function lib:sounds/error
scoreboard players set $countdown mem 0