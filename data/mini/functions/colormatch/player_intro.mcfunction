# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1062.78 22.00 4019.40 178.41 40.03
tellraw @s ["",{"text":"\n >> 色彩迷阵 >>\n\n","color":"gold","bold":true}," 站在 ",{"text":"与墙壁相同的方块","color":"gold"}," 上！\n 倒计时结束时, 与墙壁不相同的地板都会消失！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n"]
effect give @s night_vision 1000000 0 true