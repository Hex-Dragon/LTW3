# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1013.47 247.63 5045.62 -178.86 17.18
worldborder set 1000000
effect give @s[team=!debugging] night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 钢铁狂潮 >>\n\n","color":"gold","bold":true}," 努力挖矿冶铁, 成为 ",{"text":"持有铁锭最多","color":"gold"}," 的人吧！\n 但是, 被杀死的玩家会掉落 1/3 的物品……\n 比起挖矿, 为什么不直接 “抢” 呢？\n\n",{"text": " <生存模式> ","color":"aqua"},{"text": " <可以杀死玩家> ","color":"red"},"\n"]