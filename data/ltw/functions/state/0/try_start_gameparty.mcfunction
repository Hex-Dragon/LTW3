# 尝试开始派对模式

# 计算玩家数量
execute store result score $count mem if entity @a[tag=lobby_ready]

# 判断玩家数量过少
execute if score $count mem matches ..2 as @a at @s run function lib:sounds/error
execute if score $count mem matches ..2 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "需要至少 3 人以开始游戏, 当前人数不足!","color":"red"}]
execute if score $count mem matches ..2 run scoreboard players set $countdown mem 0

# 提示未准备
execute if score $countdown mem matches 10 run tellraw @a[tag=!lobby_ready] [{"text":"","color":"red"},{"text":">> ","bold": true},"你现在还没有准备, 请站在蓝色准备区域以加入游戏!"]

# 判断玩家数量过多
execute if score $count mem matches 9.. if score $countdown mem matches 15 run tellraw @a [{"text":"","color":"gold"},{"text":">> ","bold": true},"游戏最多支持 8 人, 当前已有 ",{"score": { "name": "$count","objective": "mem"}}, " 人, 将随机抽取 8 人开始游戏!"]
execute if score $count mem matches 9.. if score $countdown mem matches 1 run tellraw @a [{"text":"","color":"gold"},{"text":">> ","bold": true},"游戏最多支持 8 人, 当前已有 ",{"score": { "name": "$count","objective": "mem"}}, " 人, 将随机抽取 8 人开始游戏!"]

# 开始游戏
execute if score $countdown mem matches 1 run function ltw:state/0/start_gameparty