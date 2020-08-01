scoreboard players add @s gold 4
scoreboard players add @s gold_total 4
execute if score $state mem matches 0 run function item:shop/refresh_gold