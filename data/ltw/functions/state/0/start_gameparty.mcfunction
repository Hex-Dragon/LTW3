# 尝试开始小游戏模式

# 计算玩家数量
scoreboard players set $count mem 0
execute as @a[tag=hub_gameparty] run scoreboard players add $count mem 1

# 根据玩家数量判定
execute if score $count mem matches ..2 run tellraw @a[tag=hub_gameparty] [{"text": "人数不足, 需要至少 3 人, 当前仅有 ","color":"red"},{"score": { "name": "$count","objective": "mem"}}, "人!"]
execute if score $count mem matches 9.. run tellraw @a[tag=hub_gameparty] [{"text": "人数过多, 最多支持 8 人, 当前已有 ","color":"red"},{"score": { "name": "$count","objective": "mem"}}, "人!"]
execute if score $count mem matches 3..8 run tellraw @a {"text": "小游戏模式即将开始!","color":"green"}
execute if score $count mem matches 3..8 run schedule function ltw:state/3/state_enter 3s replace