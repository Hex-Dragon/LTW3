# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1010 23 8010 -45 45
effect give @s night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> RGB >>\n\n","color":"gold","bold":true},{"text": " R! ","color": "red"},{"text": "G! ","color": "green"},{"text": "B! ","color": "blue"},"\n"]
tellraw @s ["",{"text": " <淘汰制> ","color":"red","bold": true}, {"text":"达成特定条件即可通关，死亡则会被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <间接 PVP> ","color":"light_purple","bold": true}, {"text":"攻击没有伤害。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""