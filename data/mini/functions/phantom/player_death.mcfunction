# 玩家死亡时由玩家自己触发
spreadplayers 1030 6031 3 3 under 18 false @s[team=playing]
tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text": "死亡惩罚: 失明 6 秒","color":"red"}]
effect give @s blindness 6 0
effect give @s resistance 2 4 true
execute as @a at @s run function lib:sounds/error