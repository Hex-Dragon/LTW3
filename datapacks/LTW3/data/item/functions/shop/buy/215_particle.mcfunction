# 特效 (10e)
scoreboard players add @s shop_particle 0
tag @s remove canbuy

tellraw @s[scores={shop_particle=..3}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买上一级的装饰!","color":"red"}]
tellraw @s[scores={shop_particle=4,green=..9}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的绿宝石来购买这个装饰!","color":"red"}]
tag @s[scores={shop_particle=4,green=10..}] add canbuy
tellraw @s[scores={shop_particle=5..}] ["",{"text":">> ","color":"green","bold":true},"当前装饰已切换为 ",{"text":"传奇","color":"green"}]

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"装饰: 传奇","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"装饰: 传奇","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_particle 1
scoreboard players remove @s[tag=canbuy] green 10
execute as @s[tag=!canbuy,scores={shop_particle=..4}] at @s run function lib:sounds/error
execute as @s[tag=!canbuy,scores={shop_particle=5..}] at @s run function lib:sounds/hit
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_green
tag @s remove canbuy

scoreboard players set @s[scores={shop_particle=5..}] particle_type 5
