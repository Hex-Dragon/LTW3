#as player
setblock 0 0 1 shulker_box replace
data modify storage item:bonus random_bonus set from storage item:bonus item.tag.bonus_random_bonus[0]
data remove storage item:bonus item.tag.bonus_random_bonus[0]
execute store result score $item.random.count mem run data get storage item:bonus random_bonus.count
execute if score $item.random.count mem matches 1.. if data storage item:bonus random_bonus{"type":"normal"} run function item:bonus_item/random_normal
execute if score $item.random.count mem matches 1.. if data storage item:bonus random_bonus{"type":"score"} run function item:bonus_item/random_score
tellraw 00ll00 {"nbt":"item.tag.bonus_random_bonus","storage": "item:bonus"}
execute if data storage item:bonus item.tag.bonus_random_bonus[0] run say 啊啊啊
execute if data storage item:bonus item.tag.bonus_random_bonus[0] run function item:bonus/random_bonus