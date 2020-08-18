execute if score @s buy_trigger matches 1 if score $state mem matches 0 run function item:shop/buy_apple1
execute if score @s buy_trigger matches 2 if score $state mem matches 0 run function item:shop/buy_apple2
execute if score @s buy_trigger matches 3 if score $state mem matches 0 run function item:shop/buy_armor1
execute if score @s buy_trigger matches 5 if score $state mem matches 0 run function item:shop/buy_armor2
execute if score @s buy_trigger matches 6 if score $state mem matches 0 run function item:shop/buy_armor3
execute if score @s buy_trigger matches 7 if score $state mem matches 0 run function item:shop/buy_arrow1
execute if score @s buy_trigger matches 8 if score $state mem matches 0 run function item:shop/buy_arrow2
execute if score @s buy_trigger matches 9 if score $state mem matches 0 run function item:shop/buy_arrow3
execute if score @s buy_trigger matches 10 if score $state mem matches 0 run function item:shop/buy_orange
execute if score @s buy_trigger matches 11 if score $state mem matches 0 run function item:shop/buy_weapon1
execute if score @s buy_trigger matches 12 if score $state mem matches 0 run function item:shop/buy_weapon2
execute if score @s buy_trigger matches 13 if score $state mem matches 0 run function item:shop/buy_weapon3
execute if score @s buy_trigger matches 14 if score $state mem matches 0 run function item:shop/buy_weapon4
execute if score @s buy_trigger matches 15 if score $state mem matches 0 run function item:shop/buy_bow
execute if score @s buy_trigger matches 16 if score $state mem matches 0 run function item:shop/buy_potion_resist
execute if score @s buy_trigger matches 17 if score $state mem matches 0 run function item:shop/buy_potion_speed1
execute if score @s buy_trigger matches 18 if score $state mem matches 0 run function item:shop/buy_potion_speed2
execute if score @s buy_trigger matches 19 if score $state mem matches 0 run function item:shop/buy_firework
execute if score @s buy_trigger matches 20 if score $state mem matches 0 run function item:shop/buy_bgm
execute if score @s buy_trigger matches 21 if score $state mem matches 0 run function item:shop/buy_pig
execute if score @s buy_trigger matches 114514 if score $state mem matches 0 run function item:shop/buy_easter_egg
scoreboard players set @s buy_trigger 0
execute if score $state mem matches 0 run scoreboard players enable @s buy_trigger
