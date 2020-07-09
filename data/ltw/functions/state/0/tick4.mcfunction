# 将玩家分类：经典、小游戏、旁观
tag @a remove hub_classic
tag @a remove hub_gameparty
tag @a remove hub_watch
execute as @a if block ~ ~-1 ~ crimson_hyphae run tag @s add hub_classic
execute as @a if block ~ ~-2 ~ crimson_hyphae run tag @s add hub_classic
execute as @a if block ~ ~-1 ~ warped_hyphae run tag @s add hub_gameparty
execute as @a if block ~ ~-2 ~ warped_hyphae run tag @s add hub_gameparty
tag @a[tag=!hub_classic,tag=!hub_gameparty] add hub_watch