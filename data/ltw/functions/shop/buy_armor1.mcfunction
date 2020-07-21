# 皮革头 (4 gi)

execute unless entity @s[scores={shop_armor=0..}] run scoreboard players set @s shop_armor 0
tag @s remove canbuy
tag @s[scores={shop_armor=..0,gold=36..}] add canbuy

tellraw @s[scores={shop_armor=1..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买了这个物品了!","color":"aqua"}]
tellraw @s[scores={shop_armor=..0,gold=..35}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买这个物品!","color":"red"}]

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"皮革帽子","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"皮革帽子","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_armor 1
scoreboard players remove @s[tag=canbuy] gold 36

execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup

execute as @s[tag=canbuy] run function ltw:shop/refresh_gold