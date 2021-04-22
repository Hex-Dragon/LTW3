# 对单个玩家的处理（如果玩家中途加入就会执行此函数）

# HUD
title @s clear
title @s actionbar ""

# BGM
scoreboard players set @s music_now 1
function lib:music/refresh
scoreboard players set @s music_now 2

# 状态效果
effect clear @s

# 位置与模式
tp @s -14 10 -40 218 0
gamemode adventure

# ——————————————————————————————————————————————

# 经验、配方
recipe take @s *
xp set @s 0 points
xp set @s 0 levels

# 物品
clear @s

# 设置默认状态
function ltw:state/0/sp/join_watch



# TODO: 未完成的重构

## 开启触发器
#scoreboard players enable @s buy_trigger

#execute as @s run function item:shop/refresh_gold
#execute as @s run function item:shop/refresh_green
