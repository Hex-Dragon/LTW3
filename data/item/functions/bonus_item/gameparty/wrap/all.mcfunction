#as item
tp @s ~ ~ ~
data merge entity @s {Age:-32768,PickupDelay:0,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0]}
execute as @s run data modify entity @s CustomName set from entity @s Item.tag.item_name