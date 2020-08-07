# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1004.13 7.86 7003.00 -2922.38 12.84
tellraw @s ["",{"text":"\n >> 夺命足球 >>\n\n","color":"gold","bold":true}," 将史莱姆踢到其他人的脸上, 其他人就是你的球门!\n 史莱姆也会造成伤害, 站在绿宝石上恢复生命值……\n"]
tellraw @s ["",{"text": " <积分制> ","color":"red","bold": true}, {"text":"击退史莱姆, 每撞到一个人获得一分。","color":"gray"}]
tellraw @s ["",{"text": " <间接 PVP> ","color":"light_purple","bold": true}, {"text":"无法直接攻击他人, 但可以击退史莱姆撞击他人。","color":"gray"}]
tellraw @s ["",{"text": " <提供补给> ","color":"aqua","bold": true}, {"text":"快捷栏的最后一格将提供击退木棍。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""

effect give @s night_vision 1000000 0 true