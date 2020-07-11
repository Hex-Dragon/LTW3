#as item
tp @s @a[tag=ltw_item_op,limit=1]
tag @s add ltw_item_old
data modify entity @s PickupDelay set value 0