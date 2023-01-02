# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1012.33 12.13 7006.82 -28.40 23.85
effect give @s night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 核爆刺客 >>\n\n","color":"gold","bold":true}," 用刷怪蛋 ",{"text":"召唤苦力怕炸死对方！","color":"gold"},"\n 最后一格的击退棒能击飞苦力怕和玩家！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n"]
tellraw @s ""