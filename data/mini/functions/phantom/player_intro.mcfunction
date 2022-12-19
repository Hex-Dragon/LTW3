# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1062.34 27.11 6040.84 461.44 28.30
tellraw @s ["",{"text":"\n >> 月夜狩猎 >>\n\n","color":"gold","bold":true}," 在太阳升起之前, 用三叉戟尽量击杀幻翼吧!\n 同时也别被幻翼杀死了……你可以在两翼的洞穴中恢复生命值!\n"]
tellraw @s ["",{"text": " <积分制> ","color":"red","bold": true}, {"text":"太阳升起时游戏即会结束, 然后根据击杀数决定排名。","color":"gray"}]
tellraw @s ["",{"text": " <PVE> ","color":"light_purple","bold": true}, {"text":"无法攻击其他玩家, 但可以杀死幻翼。","color":"gray"}]
tellraw @s ["",{"text": " <提供补给> ","color":"aqua","bold": true}, {"text":"快捷栏的最后一格将提供带冷却时间的三叉戟。","color":"gray"}]
tellraw @s ""