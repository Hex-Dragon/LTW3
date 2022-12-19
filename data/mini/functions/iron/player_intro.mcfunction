# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1013.47 247.63 5045.62 -178.86 17.18
worldborder set 1000000
effect give @s[team=!debugging] night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 钢铁狂潮 >>\n\n","color":"gold","bold":true}," 铁锭最多的玩家将会获胜！\n 不过, 被击杀的玩家会掉落 1/3 的物品。\n 努力挖矿冶铁, 或是成为杀人狂魔……\n\n",{"text": " <生存模式> ","color":"red","bold": true},{"text": " <完全允许 PVP> ","color":"light_purple","bold": true},"\n"]