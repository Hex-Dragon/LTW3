# 尝试开始小游戏模式

# 计算玩家数量
execute store result score $count mem if entity @a[tag=hub_gameparty]

# 根据玩家数量判定
execute if score $count mem matches ..2 as @a at @s run function lib:sounds/error
execute if score $count mem matches ..2 run tellraw @a [{"text": "需要至少 3 人以开始小游戏模式, 当前仅有 ","color":"red"},{"score": { "name": "$count","objective": "mem"}}, " 人!"]
execute if score $count mem matches 9.. as @a at @s run function lib:sounds/error
execute if score $count mem matches 9.. run tellraw @a [{"text": "小游戏模式最多支持 8 人, 当前已有 ","color":"red"},{"score": { "name": "$count","objective": "mem"}}, " 人!"]

# 判断旁观
execute if score $count mem matches 3..8 run function ltw:state/0/start_gameparty
