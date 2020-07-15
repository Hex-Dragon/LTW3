# 生成白色品质的物品实体

loot spawn ~ ~ ~ loot item:gameparty/ranks/white
summon item ~ ~ ~ {Tags:["new_item"],Age:-32768,PickupDelay:0,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0]}
data modify entity @e[tag=new_item,limit=1] Item set from entity @e[limit=1,type=item,sort=nearest,tag=!new_item] Item
kill @e[limit=1,type=item,sort=nearest,tag=!new_item]
execute as @e[tag=new_item] run data modify entity @s CustomName set from entity @s Item.tag.item_name
team join white @e[tag=new_item]
tag @e[tag=new_item] add item_white
tag @e[tag=new_item] add item_new
tag @e[tag=new_item] remove new_item
