# 粒子系统关闭 (0 eb)
# 触发器ID 101
execute unless entity @s[scores={shop_particle_s=0..}] run scoreboard players set @s shop_particle_s 0
tag @s remove canbuy
tag @s[scores={shop_particle_s=1..},tag=particle] add canbuy
tellraw @s[scores={shop_particle_s=1..},tag=particle] ["",{"text":">> ","color":"aqua","bold":true},{"text":"成功关闭 ","color":"aqua"},{"text":"粒子系统","color":"green"}]
tellraw @s[scores={shop_particle_s=1..},tag=!particle] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经关闭了 ","color":"aqua"},{"text":"粒子系统","color":"green"}]
tellraw @s[scores={shop_particle_s=0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买粒子效果系统!","color":"red"}]
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run tag @s remove particle
tag @s remove canbuy
