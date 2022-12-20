#as item at item generate position
summon item 0 0 0 {Tags:["new_item_"],Age:-32768,PickupDelay:0,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"minecraft:gold_nugget",Count:1}}
data modify entity @e[tag=new_item_,limit=1] Item set from entity @s Item
execute as @e[tag=new_item_] run data modify entity @s CustomName set from entity @s Item.tag.item_name
tag @e[tag=new_item_] add item_new
kill @s