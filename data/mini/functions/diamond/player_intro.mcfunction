# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1013.47 247.63 5045.62 -178.86 17.18
tellraw @s ["",{"text":"\n >> 钻石风暴 >>\n\n","color":"gold","bold":true}," 制作铁镐, 挖取钻石, 然后保住自己的小命!\n 不过, 或许也可以去地牢碰碰运气……\n"]
tellraw @s ["",{"text": " <积分制> ","color":"red","bold": true}, {"text":"太阳落山时游戏即会结束, 然后根据持有的钻石数排名。","color":"gray"}]
tellraw @s ["",{"text": " <PVP> ","color":"light_purple","bold": true}, {"text":"死亡会掉落一半物品, 被击杀后能立即复活。","color":"gray"}]
tellraw @s ["",{"text": " <早期测试> ","color":"dark_red","bold": true}, {"text":"此游戏目前尚在早期测试, 可能非常不稳定!","color":"dark_red"}]
tellraw @s ""