# 骰子 (1g)
tag @s remove canbuy
tag @s[scores={gold=9..}] add canbuy
tellraw @s[scores={gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金粒来赌骰子!","color":"red"}]
scoreboard players remove @s[tag=canbuy] gold 9
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function ltw:state/0/roll_dice/roll
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy