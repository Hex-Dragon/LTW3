# 存储UUID
execute store result score @s UUID run data get entity @s Thrower[0]

# 更改NBT
data merge entity @s {PickupDelay:0s}
data modify entity @s Owner set from entity @s Thrower

# TP玩家
tag @s add item_force_tp
execute as @a if score @s UUID = @e[type=item,tag=item_force_tp,limit=1] UUID run tp @e[type=item,tag=item_force_tp] @s