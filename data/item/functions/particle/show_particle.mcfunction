# 播放粒子效果
execute as @a[tag=show_particle_1] at @s run particle minecraft:composter ~ ~ ~ 0.15 0 0.15 0.001 2 force @a[tag=particle]
execute as @a[tag=show_particle_2] at @s run particle dust 1 1 1 1.5 ~ ~ ~ 0.15 0 0.15 0.001 2 force @a[tag=particle]
execute as @a[tag=show_particle_3] at @s run particle minecraft:falling_water ~ ~ ~ 0.15 0 0.15 0.001 2 force @a[tag=particle]
execute as @a[tag=show_particle_4] at @s run particle flame ~ ~0.1 ~ 0.15 0 0.15 0.001 2 force @a[tag=particle]
execute as @a[tag=show_particle_5] at @s run particle dust 10 10 10 1.5 ~ ~ ~ 0.15 0 0.15 0.001 2 force @a[tag=particle]
execute as @a[tag=show_particle_6] at @s run particle minecraft:soul_fire_flame ~ ~0.1 ~ 0.15 0 0.15 0.001 1 force @a[tag=particle]
execute as @a[tag=show_particle_6] at @s run particle flame ~ ~0.1 ~ 0.15 0 0.15 0.001 1 force @a[tag=particle]
