# 素雅粒子 (3 e)
scoreboard players add @s shop_particle_system 0
scoreboard players add @s shop_particle_2 0
tag @s remove canbuy
tag @s[scores={shop_particle_system=1..,shop_particle_2=0,green=3..}] add canbuy

tellraw @s[scores={shop_particle_system=0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先在左侧购买尾迹特效才能切换尾迹种类!","color":"red"}]
execute as @s[scores={shop_particle_system=0}] at @s run function lib:sounds/error

tellraw @s[scores={shop_particle_system=1..,shop_particle_2=1..}] ["",{"text":">> ","color":"green","bold":true},"尾迹特效已切换为 ",{"text":"素雅","color":"green"}]
execute as @s[scores={shop_particle_system=1..,shop_particle_2=1..}] at @s run function lib:sounds/hit

tellraw @s[scores={shop_particle_system=1..,shop_particle_2=0,green=..2}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的绿宝石来购买它!","color":"red"}]
execute as @s[scores={shop_particle_system=1..,shop_particle_2=0,green=..2}] at @s run function lib:sounds/error

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你已购买并切换尾迹特效为 ",{"text":"素雅","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"素雅尾迹","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_particle_2 1
scoreboard players remove @s[tag=canbuy] green 3
execute as @s[tag=canbuy] run function item:shop/refresh_green
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
tag @s remove canbuy

scoreboard players set @s[scores={shop_particle_2=1..}] particle_type 2