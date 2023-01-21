scoreboard players add @s gold 9
tellraw @a ["",{"text":">> ","color":"aqua","bold":true},{"selector": "@s","color":"aqua"}," 买了一颗二十面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"aqua"}, ", 拿回了自己的 1 金锭!"]
execute at @s run function lib:sounds/hit2