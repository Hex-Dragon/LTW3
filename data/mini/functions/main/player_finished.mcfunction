# 玩家成功时由玩家自己触发

# 成功提示与计数
tag @s remove mini_running
scoreboard players set $t_finish mem 0
execute as @a[tag=!mini_running] run scoreboard players add $t_finish mem 1
tellraw @a [{"selector": "@s","color":"green"}," 已成功! 第 ",{"score": {"name": "$t_finish","objective": "mem"}}," 名!"]

# 给已完成的玩家加分
scoreboard players add @a[tag=!mini_running] mini_score 1

# 进入旁观
gamemode spectator @s
spectate @r[tag=mini_running]

# 如果有三个玩家成功，则游戏结束
execute if score $t_finish mem matches 3.. run function mini:main/game_end