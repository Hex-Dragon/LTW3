#as item
tp @s @a[tag=item_op,limit=1]
tag @s add item_old
data modify entity @s PickupDelay set value 0