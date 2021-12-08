# as item
data modify entity @s Owner set from entity @a[tag=rgb_temp,limit=1] UUID
data modify entity @s Thrower set from entity @a[tag=rgb_temp,limit=1] UUID
data modify entity @s PickupDelay set value 0
data modify entity @s Item.tag.rgb_newrule set value 0
tp @s @a[tag=rgb_temp,limit=1]