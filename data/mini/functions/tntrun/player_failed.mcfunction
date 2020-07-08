# 玩家失败时由玩家自己触发
function mini:main/player_failed

# 玩家死亡
tag @s remove tntrun_pc

# 给存活的玩家加分
execute as @a[tag=mini_running] unless score @s mini_score matches -1 run scoreboard players add @s mini_score 1