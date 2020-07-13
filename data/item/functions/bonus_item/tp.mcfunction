#as item
tp @s @a[tag=item_op,limit=1]
tag @s add bonus_old
# 判断是否需要清除nbt tag
execute if data entity @s Item.tag{"bonus_clear_nbt":true} run data remove entity @s Item.tag
data modify entity @s PickupDelay set value 0