
# 检查已准备人数
execute store result score $count mem if entity @a[tag=lobby_ready]

# 开始：提示开始
execute if score $count mem matches 3.. if score $countdown mem matches 99.. run tellraw @a [{"text":"","color":"green"},{"text": ">> ","bold": true},"游戏即将开始, 请使用快捷栏最后一格确定自己是否参与!"]
execute if score $count mem matches 3.. if score $countdown mem matches 99.. as @a at @s run function lib:sounds/levelup
execute if score $count mem matches 3.. if score $countdown mem matches 99.. run scoreboard players set $countdown mem 40

# 取消：提示取消
execute if score $count mem matches ..2 if score $countdown mem matches ..99 run tellraw @a [{"text":"","color":"red"},{"text": ">> ","bold": true},"已准备人数不足, 游戏取消!"]
execute if score $count mem matches ..2 if score $countdown mem matches ..99 as @a at @s run function lib:sounds/error
execute if score $count mem matches ..2 if score $countdown mem matches ..99 run scoreboard players set $countdown mem 999

# 20s：提示未准备
execute if score $countdown mem matches 20 run tellraw @a[tag=!lobby_ready] [{"text":"","color":"red"},{"text":">> ","bold": true},"你现在还没有准备, 如果要参加游戏, 请丢出快捷栏最后一格的物品!"]

# 30、10s：提示玩家数量过多
execute if score $countdown mem matches 30 if score $count mem matches 9.. run tellraw @a [{"text":"","color":"gold"},{"text":">> ","bold": true},"游戏最多支持 8 人, 当前已有 ",{"score": { "name": "$count","objective": "mem"}}, " 人, 将随机抽取 8 人开始游戏!"]
execute if score $countdown mem matches 10 if score $count mem matches 9.. run tellraw @a [{"text":"","color":"gold"},{"text":">> ","bold": true},"游戏最多支持 8 人, 当前已有 ",{"score": { "name": "$count","objective": "mem"}}, " 人, 将随机抽取 8 人开始游戏!"]

# 10-：播放音效
execute if score $countdown mem matches 1..10 run execute as @a at @s run function lib:sounds/hit2

# 0：开始游戏
execute if score $countdown mem matches 0 run function ltw:state/0/start_game

# 显示信息
execute if score $countdown mem matches ..99 run title @a actionbar [{"text":"","color":"green"},{"score":{"name":"$count","objective":"mem"}}," 人已准备 | ","将在 ",{"score":{"name":"#time","objective":"mem"}}," 秒后开始游戏"]
execute if score $countdown mem matches 99.. run title @a actionbar [{"text":"","color":"red"},{"score":{"name":"$count","objective":"mem"}}," 人已准备 | 准备人数不足"]
