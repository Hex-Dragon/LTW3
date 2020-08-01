execute if score @s buy_trigger matches 1 run function item:shop/buy_apple1
execute if score @s buy_trigger matches 2 run function item:shop/buy_apple2
execute if score @s buy_trigger matches 3 run function item:shop/buy_armor1
execute if score @s buy_trigger matches 4 run function item:shop/buy_armor2
execute if score @s buy_trigger matches 5 run function item:shop/buy_armor3
execute if score @s buy_trigger matches 6 run function item:shop/buy_armor4
scoreboard players set @s buy_trigger 0
scoreboard players enable @s buy_trigger
