# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s resistance 1000000 4 true

# 设置玩家生命
attribute @s generic.max_health base set 20

# 计分板重置
scoreboard players reset @s treasure
scoreboard players set @s[team=!watching,tag=!rejoining,team=!debugging] treasure 0
tag @s remove treasure1
tag @s remove treasure2
tag @s remove treasure3
tag @s remove treasure4
tag @s remove treasure5
tag @s remove treasure6
tag @s remove treasure7
tag @s remove treasure8
tag @s remove treasure9
tag @s remove treasure10

# 传送玩家
spreadplayers 1018 1007 4 6 under 9 false @s[team=!watching,tag=!rejoining,team=!debugging]
# tp @s[team=!watching,tag=!rejoining,team=!debugging] 1010.07 7.50 1006.98 -1518.69 -10.62

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=!watching,tag=!rejoining,team=!debugging]

# 修改 Tag
tag @s add parkour_portal
tag @s[team=!watching,tag=!rejoining] remove parkour_portal
