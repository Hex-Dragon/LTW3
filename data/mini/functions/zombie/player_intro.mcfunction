# 向单个玩家展示小游戏介绍
tp @s 1010.5 20 5006.0 0 25
tellraw @s ["",{"text":"\n>> 猪海寻路 >>\n\n","color":"red","bold":true},"猪灵正在不断地涌现……\n努力生存, 成为最后的幸存者吧!\n"]
tellraw @s ["",{"text": "[需要更多测试] ","color":"red"}, {"text":"此游戏可能存在 Bug 或设计漏洞。\n","color":"gray"}]
tellraw @s ["",{"text": "[原型] ","color":"gold"}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。\n","color":"gray"}]