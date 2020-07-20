# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1008.54 7.69 7003.91 332.38 9.83
tellraw @s ["",{"text":"\n >> 夺命足球 >>\n\n","color":"gold","bold":true}," 将史莱姆踢到其他人的脸上, 干掉他们!\n"]
tellraw @s ["",{"text": " <死亡淘汰制> ","color":"red","bold": true}, {"text":"生命无法自然恢复, 被史莱姆杀死时即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <间接 PVP> ","color":"light_purple","bold": true}, {"text":"无法直接攻击他人, 但可以击退史莱姆撞击他人。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ["",{"text": " <早期测试> ","color":"dark_red","bold": true}, {"text":"这是刚做出来的新游戏, 碰到什么见鬼问题都很正常!","color":"dark_red"}]
tellraw @s ""

effect give @s night_vision 1000000 0 true