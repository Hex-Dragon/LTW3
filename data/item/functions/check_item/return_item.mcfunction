data modify block 0 0 0 RecordItem.tag.ltw_item_new set value 0b
fill 0 0 0 0 0 0 air destroy
tag @s add ltw_item_op
execute as @e[tag=!ltw_item_old,type=minecraft:item,nbt={"Item":{"tag":{"ltw_item":1b}}},limit=1] run function item:check_item/tp
tag @s remove ltw_item_op