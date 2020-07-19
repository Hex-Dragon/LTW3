# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1062.34 27.11 6040.84 461.44 28.30
tellraw @s ["",{"text":"\n >> 月夜狩猎 >>\n\n","color":"gold","bold":true}," 在太阳升起之前, 用三叉戟尽量击杀幻翼吧!\n"]
tellraw @s ["",{"text": " <积分制> ","color":"red","bold": true}, {"text":"太阳升起时游戏即会结束, 然后根据击杀数决定排名。","color":"gray"}]
tellraw @s ["",{"text": " <PVE> ","color":"light_purple","bold": true}, {"text":"无法攻击其他玩家, 但可以杀死幻翼。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ["",{"text": " <早期测试> ","color":"dark_red","bold": true}, {"text":"这是刚做出来的新游戏, 碰到什么 Bug 都很正常!","color":"dark_red"}]
tellraw @s ""