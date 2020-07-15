# 开门
# 由踩下灯的玩家执行

fill 1014 23 1057 1015 21 1056 air
tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"}," 打开了大门!"]
scoreboard players set $parkour_door mem 1
execute as @a at @s run function lib:sounds/hit