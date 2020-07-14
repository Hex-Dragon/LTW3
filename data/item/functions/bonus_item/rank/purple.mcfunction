# 生成紫色品质的物品实体并给予 new_item 标签
loot spawn 1 233 1 loot item:ranks/purple
data merge entity @e[x=1,y=233,z=1,distance=..2,limit=1] {Tags:["new_item"],Age:-32768,PickupDelay:0,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1}
execute as @e[tag=new_item] run data modify entity @s CustomName set from entity @s Item.tag.item_name
team join purple @e[tag=new_item]