# 玩家成功时由玩家自己触发

# 计数
tag @s remove mini_running
function mini:main/update_player_count

# 显示提示
execute if entity @s[tag=!rejoining] if score $player_finish mem matches ..3 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"}," 已成功! 获得了第 ",{"score": {"name": "$player_finish","objective": "mem"}}," 名!"]
execute as @a at @s run function lib:sounds/error

# 给已完成的玩家加分
scoreboard players add @a[tag=!mini_running] mini_score 1

# 进入旁观
gamemode spectator

# 检查游戏是否结束
function mini:main/check_game_end