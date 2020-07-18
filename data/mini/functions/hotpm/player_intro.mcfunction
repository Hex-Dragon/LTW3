# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1022 25 3038 180 20
tellraw @s ["",{"text":"\n >> 热土豆 >>\n\n","color":"gold","bold":true}, " 有一个人会获得土豆附身, 在土豆爆炸前攻击他人, 将土豆转移到他人身上!\n"]
tellraw @s ["",{"text": " <生命淘汰制> ","color":"red","bold": true}, {"text":"你有 2 条生命, 生命耗尽后即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <PVP> ","color":"light_purple","bold": true}, {"text":"攻击其他玩家可以转移土豆, 远程伤害同样有效。","color":"gray"}]
tellraw @s ["",{"text": " <额外道具> ","color":"aqua","bold": true}, {"text":"小游戏地图中存在 2 个白色道具。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""