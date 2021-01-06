# 强制玩家捡起自己丢弃的物品，以物品为执行者
# 更改 NBT
data modify entity @s PickupDelay set value 0
data modify entity @s Owner set from entity @s Thrower

# 将物品传送给与丢弃者 UUID 相同的玩家
execute store result score @s UUID run data get entity @s Thrower[0]
execute as @a if score @s UUID = @e[type=item,tag=item_force_tp,limit=1] UUID run tag @s add force_tp
execute if entity @a[tag=force_tp,gamemode=spectator] run kill @s
tp @s @a[tag=force_tp,limit=1]
tag @a remove force_tp
