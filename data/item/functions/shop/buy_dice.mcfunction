# 骰子 (1 gi)
# 触发器ID 999
execute unless entity @s[scores={shop_dice=0..}] run scoreboard players set @s shop_dice 0
tag @s remove canbuy
tag @s[scores={shop_dice=0,gold=9..}] add canbuy
tellraw @s[scores={shop_dice=1..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购赌了这个骰子了!","color":"aqua"}]
tellraw @s[scores={shop_dice=0,gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金粒来赌骰子!","color":"red"}]
tellraw @s[scores={shop_dice=..-1}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先赌上一级的骰子!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你赌了一次 ",{"text":"20面骰子","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 赌了一次 ",{"text":"20面骰子","color":"green"}]
execute as @s[tag=canbuy] run function item:shop/special_dice
scoreboard players remove @s[tag=canbuy] gold 9
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy