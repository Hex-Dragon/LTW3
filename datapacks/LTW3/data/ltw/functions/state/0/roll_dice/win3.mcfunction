scoreboard players add @s gold 27
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了一颗二十面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"green"}, ", 运气绝佳, 获得了 3 金锭!"]
execute at @s run function lib:sounds/hit