# 尝试开始经典模式
tellraw @a[tag=hub_ready] {"text": "经典模式尚未完成, 请开始小游戏模式!","color":"red"}
execute as @a[tag=hub_ready] at @s run function lib:sounds/error