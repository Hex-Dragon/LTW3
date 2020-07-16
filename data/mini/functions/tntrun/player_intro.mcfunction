# 向单个玩家展示小游戏介绍
tp @s 1011.5 18.0 2019.0 180 15
tellraw @s ["",{"text":"\n>> TNT Run >>\n\n","color":"gold","bold":true},"你脚下的方块会不断塌陷, 所以, 不要停下来啊!\n场地一共有三层, 掉到最下面则为失败!\n"]
tellraw @s ["",{"text": "[原型] ","color":"gold"}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。\n","color":"gray"}]

# FIXME : [HIM] ColorMatch 用屏障封顶防末影珍珠