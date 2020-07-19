# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1010.96 26.83 1032.37 -385.24 16.67
tellraw @s ["",{"text":"\n >> 旅途 >>\n\n","color":"red","bold":true}," 沿途前进, 到达终点, 获得胜利!\n"]
tellraw @s ["",{"text": " <完成制> ","color":"red","bold": true}, {"text":"根据完成跑酷的速度快慢决定排名。","color":"gray"}]
tellraw @s ["",{"text": " <和平环境> ","color":"light_purple","bold": true}, {"text":"无法攻击其他玩家。","color":"gray"}]
tellraw @s ["",{"text": " <额外道具> ","color":"aqua","bold": true}, {"text":"小游戏地图中存在 1 个蓝色道具与 1 个白色道具。","color":"gray"}]
tellraw @s ""

effect give @s night_vision 1000000 0 true