scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"red","bold":true},{"selector": "@s","color":"red"}," 买了一颗二十面骰, 掷出了 ",{"text": "1, 大失败","color":"red"}, ", 倾家荡产, 被丢了出去!"]
tp @s -0.5 27.5 -49.5 0 -11
effect give @s slow_falling 1 0 true
execute at @s run function lib:sounds/error