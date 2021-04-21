# 绿光粒子 (0 e)
# 触发器ID 103
execute unless entity @s[scores={shop_particle_s=0..}] run scoreboard players set @s shop_particle_s 0

tellraw @s[scores={shop_particle_s=0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先在左侧购买尾迹特效才能切换尾迹种类!","color":"red"}]
execute as @s[scores={shop_particle_s=0}] at @s run function lib:sounds/error

tellraw @s[scores={shop_particle_s=1..}] ["",{"text":">> ","color":"green","bold":true},"尾迹特效已切换为 ",{"text":"绿光","color":"green"}]
execute as @s[scores={shop_particle_s=1..}] at @s run function lib:sounds/hit

scoreboard players set @s[scores={shop_particle_s=1..}] particle_type 1