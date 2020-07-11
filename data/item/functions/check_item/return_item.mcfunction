data modify block 0 0 0 RecordItem.tag.item_new set value 0b
fill 0 0 0 0 0 0 air destroy
tag @s add item_op
execute as @e[tag=!item_old,type=minecraft:item,nbt={"Item":{"tag":{"item":1b}}},limit=1] run function item:check_item/tp
tag @s remove item_op