# 玩家死亡判断
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ magma_block run function mini:tntrun/player_failed
