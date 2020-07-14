setblock 0 0 1 jukebox replace
data modify block 0 0 1 RecordItem set from block 0 0 0 RecordItem
data modify block 0 0 1 RecordItem.tag.bonus_new set value 0b
setblock 0 0 1 air destroy
tag @s add item_op
execute as @e[tag=!bonus_old,type=item,nbt={"Item":{"tag":{"is_bonus":1b,"bonus_new":0b}}},limit=1] run function item:bonus_item/tp
tag @s remove item_op