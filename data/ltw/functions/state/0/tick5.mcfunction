# 判断玩家是否处于准备状态
tag @a remove hub_ready
tag @a remove hub_watch
execute as @a at @s if block ~ ~-1 ~ crimson_hyphae run tag @s add hub_ready
execute as @a at @s if block ~ ~-2 ~ crimson_hyphae run tag @s add hub_ready
execute as @a at @s if block ~ ~-1 ~ warped_hyphae run tag @s add hub_ready
execute as @a at @s if block ~ ~-2 ~ warped_hyphae run tag @s add hub_ready
tag @a[tag=!hub_ready] add hub_watch