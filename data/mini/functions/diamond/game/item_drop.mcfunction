tag @e[type=item,limit=1,tag=death_drop,sort=random] remove death_drop
scoreboard players remove #total_drop temp 1
execute if score #total_drop temp matches 1.. run function mini:diamond/game/item_drop