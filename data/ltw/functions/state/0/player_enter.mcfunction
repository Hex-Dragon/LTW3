# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
function lib:sounds/music/lobby
title @s clear
title @s actionbar ""

# 重置玩家血量上限
attribute @s generic.max_health base set 20

# 重置经验值
xp set @s 0 points
xp set @s 0 levels

# 开启触发器
scoreboard players enable @s buy_trigger

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s resistance 1000000 4 true
effect give @s weakness 1000000 4 true

# 冒险模式
gamemode adventure @s[tag=!debug]

# 传送玩家
# FIXME
tp @s[tag=!debug] 10.49 12.00 10.58 -539.78 5.82
# tp @s[tag=!debug] -10 8 -42 68 -20

# 刷新物品
clear @s[tag=!debug]
execute as @s[tag=!debug] run function item:shop/refresh_gold

# 默认进入待机状态
function item:lobby_state/join_watch