# 速度药 (5 gi)

execute unless entity @s[scores={shop_potion=0..}] run scoreboard players set @s shop_potion 0
tag @s remove canbuy
tag @s[scores={shop_potion=..0,gold=36..}] add canbuy

tellraw @s[scores={shop_potion=1..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买了这个物品了!","color":"aqua"}]
tellraw @s[scores={shop_potion=..0,gold=..35}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买这个物品!","color":"red"}]

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"速度 (0:20) 药水","color":"green"},"!"]
scoreboard players add @s[tag=canbuy] shop_potion 1
scoreboard players remove @s[tag=canbuy] gold 36

execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup

function ltw:shop/refresh_gold