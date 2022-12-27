# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1022.29 21.49 7009.34 42.30 42.15
effect give @s night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 核爆刺客 >>\n\n","color":"gold","bold":true}," 用刷怪蛋 ",{"text":"召唤苦力怕炸死对方！","color":"gold"},"\n 使用最后一格的击退棒来击飞苦力怕！\n\n",{"text": " <无法攻击玩家> ","color":"red"},"\n"]
tellraw @s ""