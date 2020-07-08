# 向单个玩家展示小游戏时执行
tp @s 1011.5 28 2011.5
tellraw @s [{"text":"\n>> TNT Run >>\n\n","color":"red","bold":true},{"text": "你脚下的方块会不断塌陷, 所以, 不要停下来啊！\n场地一共有三层, 掉到最下面则为失败！\n","color":"white","bold": false}]