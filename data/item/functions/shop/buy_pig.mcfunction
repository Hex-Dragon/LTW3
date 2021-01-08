# 哼唧 (1 gn)
# 触发器ID 21
execute unless entity @s[scores={shop_pig=0..}] run scoreboard players set @s shop_pig 0
tag @s remove canbuy
tag @s[scores={shop_pig=0,gold=1..}] add canbuy
tellraw @s[scores={shop_pig=1..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买了这个物品了!","color":"aqua"}]
tellraw @s[scores={shop_pig=0,gold=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金粒来购买这个物品!","color":"red"}]
tellraw @s[scores={shop_pig=..-1}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买上一级的物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"哼唧","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"哼唧","color":"green"}]
execute as @s[tag=canbuy] run function item:shop/special_pig
scoreboard players remove @s[tag=canbuy] gold 1
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy