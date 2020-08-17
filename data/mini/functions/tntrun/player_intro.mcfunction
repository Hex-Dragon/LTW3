# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1023.65 20.29 2006.59 -345.99 17.34
tellraw @s ["",{"text":"\n >> 地陷之坛 >>\n\n","color":"gold","bold":true}," 你脚下的方块会不断塌陷! 保持移动, 千万不要停下来!\n"]
tellraw @s ["",{"text": " <淘汰制> ","color":"red","bold": true}, {"text":"场地一共有三层, 掉到最下面即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <PVP 干扰> ","color":"light_purple","bold": true}, {"text":"攻击其他玩家可以造成击退, 但没有伤害。","color":"gray"}]
tellraw @s ["",{"text": " <额外道具> ","color":"aqua","bold": true}, {"text":"小游戏地图中存在 1 个白色道具。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""
