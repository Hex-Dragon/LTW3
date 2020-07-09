# 尝试开始小游戏模式

# 计算玩家数量
execute store result score $count mem if entity @a[tag=hub_gameparty]

# 根据玩家数量判定
execute if score $count mem matches ..2 run tellraw @a[tag=hub_gameparty] [{"text": "人数不足, 需要至少 3 人, 当前仅有 ","color":"red"},{"score": { "name": "$count","objective": "mem"}}, " 人!"]
execute if score $count mem matches 9.. run tellraw @a[tag=hub_gameparty] [{"text": "人数过多, 最多支持 8 人, 当前已有 ","color":"red"},{"score": { "name": "$count","objective": "mem"}}, " 人!"]

# 开始小游戏
execute if score $count mem matches 3..8 run tag @a remove watcher
execute if score $count mem matches 3..8 run tag @a[tag=!hub_gameparty] add watcher
execute if score $count mem matches 3..8 run function ltw:state/3/state_enter