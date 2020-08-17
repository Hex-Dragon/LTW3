# 5tick运行一次 计分板单位5tick

# 钻石：起飞
scoreboard players remove @a[scores={effect_floating=0..}] effect_floating 1
effect clear @a[scores={effect_floating=0}] levitation
execute as @a[gamemode=!spectator] at @s if block ~ ~-0.01 ~ diamond_block run effect give @s levitation 1 12
execute as @a[gamemode=!spectator] at @s if block ~ ~-0.01 ~ diamond_block run effect give @s slow_falling 2 0 true
execute as @a[gamemode=!spectator] at @s if block ~ ~-0.01 ~ diamond_block run scoreboard players set @s effect_floating 2
execute as @a[gamemode=!spectator] at @s if block ~ ~-0.01 ~ diamond_block run function lib:sounds/teleport

# 绿宝石：回血
scoreboard players remove @a[scores={effect_regen=0..}] effect_regen 1
effect clear @a[scores={effect_regen=0}] levitation
execute as @a[gamemode=!spectator] at @s if block ~ ~-0.01 ~ emerald_block run effect give @s regeneration 2 2
execute as @a[gamemode=!spectator] at @s if block ~ ~-0.01 ~ emerald_block run scoreboard players set @s effect_regen 4
