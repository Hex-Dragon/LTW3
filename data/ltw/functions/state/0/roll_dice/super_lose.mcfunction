scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"red","bold":true},{"selector": "@s","color":"red"}," 买了一颗二十面骰, 掷出了 ",{"text": "1, 大失败","color":"red"}, ", 倾家荡产, 被丢了出去!"]
tp @s 20 23 -58
