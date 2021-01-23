#as player
setblock 0 0 1 shulker_box replace
data modify storage item:bonus random_bounds set from storage item:bouns item.tag.bonus_random_bounds[0]
data remove storage item:bouns item.tag.bonus_random_bounds[0]
execute store result score $item.random.count mem run data get storage item:bonus random_bounds.count
execute if score $item.random.count mem matches 1.. if data storage item:bonus random_bounds{"type":"normal"} run function item:bonus_item/random_normal
execute if score $item.random.count mem matches 1.. if data storage item:bonus random_bounds{"type":"score"} run function item:bonus_item/random_score
execute if data storage item:bouns item.tag.bonus_random_bounds[0] run function item:bonus/random_bounds