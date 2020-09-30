# 魂焰粒子 (1 eb)
# 触发器ID 108
execute unless entity @s[scores={shop_particle_6=0..}] run scoreboard players set @s shop_particle_6 0
tag @s remove canbuy
tag @s[scores={shop_particle_s=1..,shop_particle_6=0,green=9..}] add canbuy

tellraw @s[scores={shop_particle_s=0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先在左侧购买尾迹特效才能切换尾迹种类!","color":"red"}]
execute as @s[scores={shop_particle_s=0}] at @s run function lib:sounds/error

tellraw @s[scores={shop_particle_s=1..,shop_particle_6=1..}] ["",{"text":">> ","color":"aqua","bold":true},"尾迹特效已切换为 ",{"text":"魂焰","color":"aqua"}]
execute as @s[scores={shop_particle_s=1..,shop_particle_6=1..}] at @s run function lib:sounds/hit

tellraw @s[scores={shop_particle_s=1..,shop_particle_6=0,green=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的绿宝石块来购买它!","color":"red"}]
execute as @s[scores={shop_particle_s=1..,shop_particle_6=0,green=..8}] at @s run function lib:sounds/error

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你已购买并切换尾迹特效为 ",{"text":"魂焰","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"魂焰尾迹","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_particle_6 1
scoreboard players remove @s[tag=canbuy] green 9
execute as @s[tag=canbuy] run function item:shop/refresh_green
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
tag @s remove canbuy

scoreboard players set @s[scores={shop_particle_6=1..}] particle_type 6
