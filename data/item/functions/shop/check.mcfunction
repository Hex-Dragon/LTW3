#as player
execute if score @s buy_trigger matches 1 run function item:shop/buy_apple1
execute if score @s buy_trigger matches 2 run function item:shop/buy_apple2
execute if score @s buy_trigger matches 3 run function item:shop/buy_armor1
execute if score @s buy_trigger matches 4 run function item:shop/buy_armor2

scoreboard players set @s buy_trigger 0
scoreboard players enable @s buy_trigger