# 强制玩家捡起自己丢弃的物品，以物品为执行者

# 存储 UUID
# execute store result score @s UUID run data get entity @s Thrower[0]

# 更改 NBT
# data merge entity @s {PickupDelay:0s}
# data modify entity @s Owner set from entity @s Thrower

# 将物品传送给玩家
# 修改为了每 tick 执行一次，大概不需要了？
# tag @s add item_force_tp
# execute as @a if score @s UUID = @e[type=item,tag=item_force_tp,limit=1] UUID run tp @e[type=item,tag=item_force_tp] @s