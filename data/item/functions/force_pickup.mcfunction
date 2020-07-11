# 存储UUID
execute store result score @s UUID1 run data get entity @s Thrower[0]
execute store result score @s UUID2 run data get entity @s Thrower[1]
execute store result score @s UUID3 run data get entity @s Thrower[2]
execute store result score @s UUID4 run data get entity @s Thrower[3]

# 更改NBT
data merge entity @s {PickupDelay:0s}
data modify entity @s Owner set from entity @s Thrower

# TP玩家
tag @s add item_force_tp
execute as @a if score @s UUID1 = @e[type=item,tag=item_force_tp,limit=1] UUID1 if score @s UUID2 = @e[type=item,tag=item_force_tp,limit=1] UUID2 if score @s UUID3 = @e[type=item,tag=item_force_tp,limit=1] UUID3 if score @s UUID4 = @e[type=item,tag=item_force_tp,limit=1] UUID4 run tp @e[type=item,tag=item_force_tp] @s