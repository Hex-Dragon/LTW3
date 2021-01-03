# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1010.96 26.83 1032.37 -385.24 16.67
tellraw @s ["",{"text":"\n >> 遗迹寻宝 >>\n\n","color":"gold","bold":true}," 遗迹中共有十处宝藏, 赶在遗迹关闭前尽量收集吧!\n"]
tellraw @s ["",{"text": " <积分制> ","color":"red","bold": true}, {"text":"根据寻得的宝藏数量进行排名。","color":"gray"}]
tellraw @s ["",{"text": " <和平环境> ","color":"light_purple","bold": true}, {"text":"无法攻击其他玩家。","color":"gray"}]
tellraw @s ""