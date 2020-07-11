setblock 8 12 2009 jukebox
data modify block 8 12 2009 RecordItem set from entity @s Inventory[{"tag":{"ltw_item_new":1b}}]
tellraw @a [{"selector": "@s"},{"text":"获得了道具："},{"nbt": "RecordItem.tag.ltw_item_name","block": "8 12 2009","interpret": true}]
data modify block 8 12 2009 RecordItem.tag.ltw_item_new set value 0b
clear @s #item:items{"ltw_item_new":1b}
fill 8 12 2009 8 12 2009 air destroy
tag @s add ltw_item_op
execute positioned 8 12.5 2009 align xyz as @e[tag=!ltw_item_old,type=minecraft:item,nbt={"Item":{"tag":{"ltw_item":1b}}},dx=0,dy=0,dz=0,limit=1] run function item:check_item__
tag @s remove ltw_item_op