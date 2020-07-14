#as player
setblock 0 0 1 jukebox replace
data modify block 0 0 1 RecordItem set from block 0 0 0 RecordItem.tag.bonus_give_items[0]
setblock 0 0 1 air destroy
tag @s add item_op
execute as @e[tag=!bonus_old,tag=!item_new,type=item,nbt={"Item":{"tag":{"is_bonus":1b}}},limit=1] run function item:bonus_item/tp
tag @s remove item_op
data remove block 0 0 0 RecordItem.tag.bonus_give_items[0]
execute if data block 0 0 0 RecordItem.tag.bonus_give_items[0] run function item:bonus_item/give_items