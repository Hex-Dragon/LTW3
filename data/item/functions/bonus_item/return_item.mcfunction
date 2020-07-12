data modify block 0 0 0 RecordItem.tag.bonus_new set value 0b
setblock 0 0 0 air destroy
tag @s add item_op
execute as @e[tag=!bonus_old,type=item,nbt={"Item":{"tag":{"is_bonus":1b}}},limit=1] run function item:bonus_item/tp
tag @s remove item_op