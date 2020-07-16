# 向单个玩家展示小游戏介绍
tp @s 1062 22 4012 20 180
tellraw @s ["",{"text":"\n>> 陷阱迷阵 >>\n\n","color":"gold","bold":true},"墙壁会显示安全的歇脚方块,\n在倒计时结束前站在它们上面以躲避陷阱!\n"]
tellraw @s ["",{"text": "[原型] ","color":"gold"}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。\n","color":"gray"}]