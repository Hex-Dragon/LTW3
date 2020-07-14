# 生成紫色品质的物品
setblock 14 4 1 air replace
setblock 14 4 1 chest{LootTable:"item:ranks/purple"}
setblock 14 4 1 air destroy
data merge entity @e[x=14,y=4,z=1,distance=..2,limit=1] {Tags:["new_item"],Age:-32768,PickupDelay:0,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0]}
execute as @e[tag=new_item] run data modify entity @s CustomName set from entity @s Item.tag.item_name
team join purple @e[tag=new_item]