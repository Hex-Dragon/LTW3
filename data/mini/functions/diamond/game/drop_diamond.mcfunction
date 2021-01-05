# 处理钻石总数
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=death_drop,distance=..100] store result score @s temp run data get entity @s Item.Count
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=death_drop,distance=..100] run scoreboard players operation #diamond_count temp += @s temp
# 相应减少掉落总数（单独处理了钻石）
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=death_drop,distance=..100] run scoreboard players remove #total_drop temp 1
# 处理掉落物数量（除以2/向上取整）
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=death_drop,distance=..100] run scoreboard players add @s temp 1
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=death_drop,distance=..100] store result entity @s Item.Count byte 0.5 run scoreboard players get @s temp
# 处理钻石标签
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=death_drop,distance=..100] run tag @s remove death_drop
# 给予玩家钻石（除以2/向下取整）
scoreboard players operation #diamond_count temp /= #const_2 mem
execute if score #diamond_count temp matches 1.. run function mini:diamond/game/give_diamond