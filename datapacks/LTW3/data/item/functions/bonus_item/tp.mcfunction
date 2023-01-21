#as item
tp @s @a[tag=item_op,limit=1]
tag @s add bonus_old
data modify entity @s Owner set from entity @a[tag=item_op,limit=1] UUID
data modify entity @s Thrower set from entity @a[tag=item_op,limit=1] UUID
# 判断是否需要清除nbt tag
execute if predicate item:bonus/clear_nbt run data remove entity @s Item.tag
data modify entity @s PickupDelay set value 0