# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1013.47 247.63 5045.62 -178.86 17.18
worldborder set 1000000
effect give @s[team=!debugging] night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 贸易专家 >>\n\n","color":"gold","bold":true}," 手持交易契约唤出村民, 与村民交易, 尽快获取绿宝石!\n 每项交易都可以进行 2 次， 进行交易可以增加经验值， 解锁更多交易!\n"]
tellraw @s ["",{"text": " <积分制> ","color":"red","bold": true}, {"text":"太阳落山时游戏即会结束, 然后根据持有的绿宝石数排名。","color":"gray"}]
tellraw @s ["",{"text": " <PVE> ","color":"light_purple","bold": true}, {"text":"无法攻击其他玩家, 死亡不掉落且能立即复活。","color":"gray"}]
tellraw @s ["",{"text": " <早期测试> ","color":"dark_red","bold": true}, {"text":"此游戏目前还在早期测试, 什么鬼事情都有可能发生!","color":"dark_red"}]
tellraw @s ""