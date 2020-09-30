# 混焰粒子 (9 e)
# 触发器ID 108
execute unless entity @s[scores={shop_particle_6=0..}] run scoreboard players set @s shop_particle_6 0
tag @s remove canbuy
tag @s[scores={shop_particle_6=0,green=9..},tag=particle] add canbuy
tellraw @s[scores={shop_particle_6=1..},tag=!show_particle_6] ["",{"text":">> ","color":"aqua","bold":true},{"text":"成功切换 ","color":"aqua"},{"text":"混焰粒子","color":"green"}]
tellraw @s[scores={shop_particle_6=1..},tag=show_particle_6] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经激活了 ","color":"aqua"},{"text":"混焰粒子","color":"green"}]
tellraw @s[scores={shop_particle_6=0,green=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的绿宝石来购买这个粒子!","color":"red"}]
tellraw @s[tag=!particle] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买粒子效果系统!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"混焰粒子","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"混焰粒子","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_particle_6 1
scoreboard players remove @s[tag=canbuy] green 9
execute as @s[scores={shop_particle_6=0}] at @s run function lib:sounds/error
execute as @s[scores={shop_particle_6=1..}] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_green
tag @s remove canbuy

# 切换粒子
execute if entity @s[scores={shop_particle_6=1..},tag=!show_particle_6] run function item:particle/reset_particle
execute if entity @s[scores={shop_particle_6=1..},tag=!show_particle_6] run tag @s add show_particle_6