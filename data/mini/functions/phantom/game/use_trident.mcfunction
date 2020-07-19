# 设置玩家分数
scoreboard players set @s countdown 2
scoreboard players reset @s useTrident

# 清除三叉戟以防bug
clear @s trident{GameItem:1b}