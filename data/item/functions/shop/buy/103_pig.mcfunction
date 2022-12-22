# 哼唧 (1gn)
tag @s remove canbuy
tag @s[scores={gold=1..}] add canbuy
tellraw @s[scores={gold=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金粒来购买这个物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"哼？","color":"green"}]
execute at @s run playsound entity.pig.ambient ambient @s 0 1000000 0 1000000
scoreboard players remove @s[tag=canbuy] gold 1
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy