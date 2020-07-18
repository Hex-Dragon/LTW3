# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1062 22 4012 20 180
tellraw @s ["",{"text":"\n >> 陷阱迷阵 >>\n\n","color":"gold","bold":true}," 墙壁会显示安全的歇脚方块,\n 在倒计时结束前站在它们上面以躲避陷阱!\n"]
tellraw @s ["",{"text": " <生命淘汰制> ","color":"red","bold": true}, {"text":"你有 3 条生命, 生命耗尽后即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <PVP 干扰> ","color":"light_purple","bold": true}, {"text":"攻击其他玩家可以造成击退, 但没有伤害。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""