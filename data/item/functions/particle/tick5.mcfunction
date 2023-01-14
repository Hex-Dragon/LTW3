# 播放玩家粒子效果（自己）
execute as @a[scores={particle_type=1},gamemode=!spectator,tag=!invisible] at @s run particle electric_spark ~ ~0.5 ~ 0.25 0.3 0.25 0 1 force @a
execute as @a[scores={particle_type=2},gamemode=!spectator,tag=!invisible] at @s run particle composter ~ ~0.5 ~ 0.25 0.3 0.25 2 1 force @a
execute as @a[scores={particle_type=3},gamemode=!spectator,tag=!invisible] at @s run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a
execute as @a[scores={particle_type=4},gamemode=!spectator,tag=!invisible] at @s run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1 force @a
execute as @a[scores={particle_type=5},gamemode=!spectator,tag=!invisible] at @s run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 2 1 force @a
