# 特效 (10e)
scoreboard players add @s shop_particle 0

tellraw @s ["",{"text":">> ","color":"green","bold":true},{"text":"已将装饰关闭","color":"green"}]
execute as @s at @s run function lib:sounds/hit
scoreboard players set @s particle_type 0
