# 提示 (1g)
tag @s remove canbuy
tag @s[scores={gold=9..}] add canbuy
tellraw @s[scores={gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买这个物品!","color":"red"}]
execute as @s[tag=canbuy] at @s run function item:shop/buy/101_hint_real
scoreboard players remove @s[tag=canbuy] gold 9
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy