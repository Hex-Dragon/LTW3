# 活跃橙 (3 gb)
# 触发器ID 10
execute unless entity @s[scores={shop_orange=0..}] run scoreboard players set @s shop_orange 0
tag @s remove canbuy
tag @s[scores={shop_orange=0,gold=243..}] add canbuy
tellraw @s[scores={shop_orange=1..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买了这个物品了!","color":"aqua"}]
tellraw @s[scores={shop_orange=0,gold=..242}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金块来购买这个物品!","color":"red"}]
tellraw @s[scores={shop_orange=..-1}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买上一级的物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"活跃橙","color":"green"},{"text":"请私聊龙猫领取","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"活跃橙","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_orange 1
scoreboard players remove @s[tag=canbuy] gold 243
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_gold