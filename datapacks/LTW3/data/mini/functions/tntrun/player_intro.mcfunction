# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1023.65 20.29 2006.59 -345.99 17.34
effect give @s[team=!debugging] night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 地陷圣坛 >>\n\n","color":"gold","bold":true}," 你脚踩的方块会自然消失！\n 不要停下, 保持移动, 只要 ",{"text":"不掉下场地","color":"gold"}," 即可获胜！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n"]