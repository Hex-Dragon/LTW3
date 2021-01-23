#as player
scoreboard players remove $item.random.count mem 1
execute if data storage item:bonus random_bounds{"level":"white"} run loot replace block 0 0 1 container.0 loot item:gameparty/normal/white
execute if data storage item:bonus random_bounds{"level":"green"} run loot replace block 0 0 1 container.0 loot item:gameparty/normal/green
execute if data storage item:bonus random_bounds{"level":"blue"} run loot replace block 0 0 1 container.0 loot item:gameparty/normal/blue
execute if data storage item:bonus random_bounds{"level":"purple"} run loot replace block 0 0 1 container.0 loot item:gameparty/normal/purple
data modify storage item:bouns item_buff prepend from block 0 0 1 Items[{"Slot":0b}]
execute if score $item.random.count mem matches 1.. run function item:bonus_item/random_normal