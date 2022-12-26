# 玩家成功时由玩家自己触发

# 计数
tag @s remove mini_running
function mini:main/update_player_count

# 计算时间
scoreboard players set #temp mem 150
scoreboard players operation #temp mem -= $countdown mem
execute if score #temp mem matches 1..100 run advancement grant @s only ltw:parkour/treasure1
execute if score #temp mem matches 1..60 run advancement grant @s only ltw:parkour/treasure2
execute if score #temp mem matches 1..40 run advancement grant @s only ltw:parkour/treasure3

# 显示提示
execute if entity @s[tag=!rejoining] if score $player_finish mem matches 1 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s"},{"text": " 已到达终点，用时 ","color":"green"},{"score": {"name": "#temp","objective": "mem"}}," 秒",{"text": "！第 ","color":"green"},{"score": {"name": "$player_finish","objective": "mem"},"color":"green"},{"text": " 名！","color":"green"}]
execute if entity @s[tag=!rejoining] if score $player_finish mem matches 2..3 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s"},{"text": " 已到达终点！第 ","color":"green"},{"score": {"name": "$player_finish","objective": "mem"},"color":"green"},{"text": " 名！","color":"green"}]
execute if entity @s[tag=!rejoining] if score $player_finish mem matches 3 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "前三名已全部决出！无需再前往终点了，专心收集宝藏吧！","color":"aqua"}]
execute if entity @s[tag=!rejoining] if score $player_finish mem matches ..2 run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"text": "继续收集宝藏，直到时间结束吧！","color":"aqua"}]
execute as @a at @s run function lib:sounds/levelup

# 给已完成的玩家加分
scoreboard players add @a[tag=!mini_running] mini_score 1
