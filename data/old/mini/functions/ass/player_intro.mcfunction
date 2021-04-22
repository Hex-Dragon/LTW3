# 向单个玩家展示小游戏介绍
tp @s[team=!debug] 1010 23 7010 -45 45
effect give @s night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 核爆刺客 >>\n\n","color":"gold","bold":true}," 在躲避苦力怕的同时，召唤苦力怕炸死对方！\n"]
tellraw @s ["",{"text": " <淘汰制> ","color":"red","bold": true}, {"text":"被苦力怕炸死的玩家即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <间接 PVP> ","color":"light_purple","bold": true}, {"text":"攻击没有伤害，但可以召唤、击退苦力怕。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""