# 每秒一次
# 绿宝石：回血

execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ emerald_block run effect give @s regeneration 2 2
# scoreboard players remove @a[scores={effect_regen=0..}] effect_regen 1
# execute as @a[gamemode=!spectator,scores={effect_regen=..0}] at @s if block ~ ~-1 ~ emerald_block run effect give @s regeneration 2 2
# execute as @a[gamemode=!spectator,scores={effect_regen=..0}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players set @s effect_regen 4
# effect clear @a[scores={effect_regen=0}] regeneration
