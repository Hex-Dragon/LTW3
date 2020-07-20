# 箭 x2 (1 gi)

execute unless entity @s[scores={shop_arrow=0..}] run scoreboard players set @s shop_arrow 0
tag @s remove canbuy
tag @s[scores={shop_arrow=..0,gold=9..}] add canbuy

tellraw @s[scores={shop_arrow=1..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买了这个物品了!","color":"aqua"}]
tellraw @s[scores={shop_arrow=..0,gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买这个物品!","color":"red"}]

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"箭 x2","color":"green"},"!"]
scoreboard players add @s[tag=canbuy] shop_arrow 1
scoreboard players remove @s[tag=canbuy] gold 9

execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup

function ltw:shop/refresh_gold