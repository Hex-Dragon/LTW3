# 炫彩粒子 (6 e)
# 触发器ID 107
execute unless entity @s[scores={shop_particle_s=0..}] run scoreboard players set @s shop_particle_s 0
execute unless entity @s[scores={shop_particle_5=0..}] run scoreboard players set @s shop_particle_5 0
tag @s remove canbuy
tag @s[scores={shop_particle_s=1..,shop_particle_5=0,green=6..}] add canbuy

tellraw @s[scores={shop_particle_s=0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先在左侧购买尾迹特效才能切换尾迹种类!","color":"red"}]
execute as @s[scores={shop_particle_s=0}] at @s run function lib:sounds/error

tellraw @s[scores={shop_particle_s=1..,shop_particle_5=1..}] ["",{"text":">> ","color":"green","bold":true},"尾迹特效已切换为 ",{"text":"炫彩","color":"green"}]
execute as @s[scores={shop_particle_s=1..,shop_particle_5=1..}] at @s run function lib:sounds/hit

tellraw @s[scores={shop_particle_s=1..,shop_particle_5=0,green=..5}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的绿宝石来购买它!","color":"red"}]
execute as @s[scores={shop_particle_s=1..,shop_particle_5=0,green=..5}] at @s run function lib:sounds/error

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你已购买并切换尾迹特效为 ",{"text":"炫彩","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"炫彩尾迹","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_particle_5 1
scoreboard players remove @s[tag=canbuy] green 6
execute as @s[tag=canbuy] run function item:shop/refresh_green
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
tag @s remove canbuy

scoreboard players set @s[scores={shop_particle_5=1..}] particle_type 5
