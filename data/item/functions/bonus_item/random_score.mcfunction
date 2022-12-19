#as player
scoreboard players remove $item.random.count mem 1
execute if data storage item:bonus random_bonus{"level":"white"} run loot replace block 0 0 1 container.0 loot item:score/white
execute if data storage item:bonus random_bonus{"level":"green"} run loot replace block 0 0 1 container.0 loot item:score/green
execute if data storage item:bonus random_bonus{"level":"blue"} run loot replace block 0 0 1 container.0 loot item:score/blue
execute if data storage item:bonus random_bonus{"level":"purple"} run loot replace block 0 0 1 container.0 loot item:score/purple
data modify storage item:bonus item_buff prepend from block 0 0 1 Items[{"Slot":0b}]
function item:bonus_item/random_bonus_rename
execute if score $item.random.count mem matches 1.. run function item:bonus_item/random_score