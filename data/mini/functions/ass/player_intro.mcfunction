# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1015 20 7015 0 90
tellraw @s ["",{"text":"\n >> 核爆刺客 >>\n\n","color":"gold","bold":true}," 尝试在躲避苦力怕的同时击杀对方！\n"]
tellraw @s ["",{"text": " <PVP> ","color":"red","bold": true}, {"text":"无法直接攻击玩家，但可以通过放置苦力怕击杀。","color":"gray"}]
tellraw @s ["",{"text": " <PVE> ","color":"red","bold": true}, {"text":"无法对苦力怕造成伤害，但可以击退苦力怕。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""