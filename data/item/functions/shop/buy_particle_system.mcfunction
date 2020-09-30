# 粒子系统 (2 eb)
# 触发器ID 100
execute unless entity @s[scores={shop_particle_s=0..}] run scoreboard players set @s shop_particle_s 0
tag @s remove canbuy
tag @s[scores={shop_particle_s=0,green=18..},tag=!particle] add canbuy
tellraw @s[scores={shop_particle_s=1..},tag=!particle] ["",{"text":">> ","color":"aqua","bold":true},{"text":"成功打开 ","color":"aqua"},{"text":"粒子系统","color":"green"}]
tellraw @s[scores={shop_particle_s=1..},tag=particle] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经打开了 ","color":"aqua"},{"text":"粒子系统","color":"green"}]
tellraw @s[scores={shop_particle_s=0,green=..17}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的绿宝石来购买粒子系统!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"粒子系统","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"粒子系统","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_particle_s 1
scoreboard players remove @s[tag=canbuy] green 18
execute as @s[scores={shop_particle_s=0}] at @s run function lib:sounds/error
execute as @s[scores={shop_particle_s=1..}] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_green
tag @s remove canbuy

# 打开粒子系统
execute as @s[scores={shop_particle_s=1..},tag=!particle] run tag @s add particle