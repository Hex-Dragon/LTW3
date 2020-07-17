# 向单个玩家展示小游戏介绍
tp @s 1010.83 30.16 1033.66 -1117.71 18.17
tellraw @s ["",{"text":"\n >> 旅途 >>\n\n","color":"red","bold":true}," 沿途前进, 到达终点, 获得胜利!\n"]
tellraw @s ["",{"text": " <完成制> ","color":"red","bold": true}, {"text":"根据完成跑酷的速度快慢决定排名。","color":"gray"}]
tellraw @s ["",{"text": " <和平环境> ","color":"light_purple","bold": true}, {"text":"无法攻击其他玩家。","color":"gray"}]
tellraw @s ["",{"text": " <额外道具> ","color":"aqua","bold": true}, {"text":"小游戏地图中存在 1 个绿色道具、1 个白色道具。","color":"gray"}]
tellraw @s ["",{"text": " <缺乏测试> ","color":"gold","bold": true}, {"text":"此游戏尚未经过足够测试, 可能存在 Bug 或设计漏洞。","color":"gray"}]
tellraw @s ""