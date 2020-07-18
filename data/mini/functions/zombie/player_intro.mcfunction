# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1010.5 20 5006.0 0 25
tellraw @s ["",{"text":"\n >> 猪海寻路 >>\n\n","color":"red","bold":true}," 猪灵正不断地涌现……努力生存, 成为最后的幸存者吧!\n"]
tellraw @s ["",{"text": " <死亡淘汰制> ","color":"red","bold": true}, {"text":"生命无法自然恢复, 被猪灵杀死时即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <PVE> ","color":"light_purple","bold": true}, {"text":"无法攻击其他玩家, 但可以杀死猪灵。","color":"gray"}]
tellraw @s ["",{"text": " <额外道具> ","color":"aqua","bold": true}, {"text":"将会随着时间推移生成 2 个白色道具。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""
