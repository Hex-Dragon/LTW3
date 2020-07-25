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

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
tp @s[tag=!debug] 1002.0 7.5 7002.0

# 重置记分板
scoreboard players reset @s slime_score
scoreboard players set @s[tag=!watcher,tag=!rejoining,tag=!debug] slime_score 0

# 调整模式
gamemode spectator @s[tag=!debug]
gamemode adventure @s[tag=!watcher,tag=!rejoining,tag=!debug]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:slime/player_failed

# 给予物品
replaceitem entity @s hotbar.8 stick{game_item:1b,Enchantments:[{id:"knockback",lvl:2}],display:{Name:'{"text":"补给用击退棒","italic":false,"color":"white"}'}} 1