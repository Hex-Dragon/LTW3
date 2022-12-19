# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
function lib:sounds/music/lobby
title @s clear
title @s actionbar ""

# 重置玩家血量上限
attribute @s generic.max_health base set 20

# 重置经验值与配方
recipe take @a *
xp set @s 0 points
xp set @s 0 levels

# 开启触发器
scoreboard players enable @s buy_trigger

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 1 10 true
gamerule naturalRegeneration true
effect give @s resistance 1000000 4 true
effect give @s weakness 1000000 4 true

# 冒险模式
gamemode adventure @s[team=!debugging]

# 传送玩家
tp @s[team=!debugging] -10 8 -32 -113 0

# 刷新物品
clear @s[team=!debugging]
execute as @s[team=!debugging] run function item:shop/refresh_gold
execute as @s[team=!debugging] run function item:shop/refresh_green

# 默认进入待机状态
function ltw:state/0/state/join_watch