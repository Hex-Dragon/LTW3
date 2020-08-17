# 5tick运行一次 计分板单位5tick

# 钻石：起飞
scoreboard players remove @a[scores={effect_floating=0..}] effect_floating 1
execute as @a[gamemode=!spectator,scores={effect_floating=..0}] at @s if block ~ ~-1 ~ diamond_block run effect give @s levitation 1 12
execute as @a[gamemode=!spectator,scores={effect_floating=..0}] at @s if block ~ ~-1 ~ diamond_block run effect give @s slow_falling 2 0 true
execute as @a[gamemode=!spectator,scores={effect_floating=..0}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s effect_floating 2
execute as @a[gamemode=!spectator,scores={effect_floating=..0}] at @s if block ~ ~-1 ~ diamond_block run function lib:sounds/teleport
effect clear @a[scores={effect_floating=0}] levitation

# 绿宝石：回血
scoreboard players remove @a[scores={effect_regen=0..}] effect_regen 1
execute as @a[gamemode=!spectator,scores={effect_regen=..0}] at @s if block ~ ~-1 ~ emerald_block run effect give @s regeneration 2 2
execute as @a[gamemode=!spectator,scores={effect_regen=..0}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players set @s effect_regen 4
effect clear @a[scores={effect_regen=0}] regeneration
