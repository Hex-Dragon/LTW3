# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1013.47 247.63 5045.62 -178.86 17.18
worldborder set 1000000
effect give @s[team=!debugging] night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 贸易专家 >>\n\n","color":"gold","bold":true}," 手持最后一格的交易契约, 即可召唤村民。\n 与村民进行交易, 成为 ",{"text":"绿宝石最多","color":"gold"}," 的玩家吧！\n\n",{"text": " <生存模式> ","color":"aqua"},{"text": " <无法攻击玩家> ","color":"green"},"\n"]