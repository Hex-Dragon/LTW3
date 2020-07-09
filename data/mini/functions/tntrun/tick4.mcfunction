# 玩家死亡判断
execute as @a[tag=tntrun_pc] at @s if block ~ ~ ~ lava run function mini:tntrun/player_failed
execute as @a[tag=tntrun_pc] at @s if block ~ ~-1 ~ lava run function mini:tntrun/player_failed
execute as @a[tag=tntrun_pc] at @s if block ~ ~-2 ~ lava run function mini:tntrun/player_failed
