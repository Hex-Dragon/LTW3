# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1029 15 3007.77 -290.29 32.65
tellraw @s ["",{"text":"\n >> 炸弹狂魔 >>\n\n","color":"gold","bold":true}," 炸弹会在一段时间后爆炸！\n 在持有炸弹时, 只要 ",{"text":"攻击其他人","color":"gold"}," 就能把炸弹甩给他！\n 努力存活下来吧！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n"]
effect give @s night_vision 1000000 0 true