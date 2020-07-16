# 向单个玩家展示小游戏介绍
tp @s 1010.83 30.16 1033.66 -1117.71 18.17
tellraw @s ["",{"text":"\n>> 旅途 >>\n\n","color":"red","bold":true},"沿途前进, 到达终点, 获得胜利!"]
tellraw @s ["",{"text": "[不稳定] ","color":"red"}, {"text":"此游戏尚未经过足够测试, 可能存在问题。\n","color":"gray"}]