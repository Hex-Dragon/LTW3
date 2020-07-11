setblock 8 12 2009 jukebox
data modify block 8 12 2009 RecordItem set from entity @s Inventory[{"tag":{"ltw_item_new":1b}}]
tellraw @a [{"selector": "@s"},{"text":"获得了道具："},{"nbt": "RecordItem.tag.ltw_item_name","block": "8 12 2009","interpret": true}]
data modify block 8 12 2009 RecordItem.tag.ltw_item_new set value 0b
clear @s #test:items{"ltw_item_new":1b}
fill 8 12 2009 8 12 2009 air destroy
execute positioned 8 12 2009 run tp @e[type=item,sort=nearest,limit=1] ~ ~ ~