# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
gamerule naturalRegeneration false
effect give @s night_vision 1000000 0 true

# 传送玩家
tp @s[tag=!debug] 1015.79 7.01 7009.40

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:slime/player_failed

# 给予物品
replaceitem entity @s hotbar.8 stick{GameItem:1b,Enchantments:[{id:"knockback",lvl:1}],Unbreakable:1b,display:{Name:'{"text":"击退棒","italic":false}'}} 1