# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1062.78 22.00 4019.40 178.41 40.03
tellraw @s ["",{"text":"\n >> 色彩迷阵 >>\n\n","color":"gold","bold":true}," 倒计时结束时地板会消失, 只有站在与墙壁显示的方块相同的地板上才能存活!\n"]
tellraw @s ["",{"text": " <生命淘汰制> ","color":"red","bold": true}, {"text":"你有 3 条生命, 生命耗尽后即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <PVP 干扰> ","color":"light_purple","bold": true}, {"text":"攻击其他玩家可以造成击退, 但没有伤害。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""

effect give @s night_vision 1000000 0 true