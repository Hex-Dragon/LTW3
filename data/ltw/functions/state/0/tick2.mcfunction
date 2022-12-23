execute as @a[tag=!pass_setup] at @s run function ltw:state/0/setup/check

# 处理乱扔物品的玩家
execute as @e[type=item,nbt={Item:{tag:{stats_item:1b}}},tag=!new_stats] unless data entity @s Thrower at @s run tag @a[distance=..3] add refresh
execute as @e[type=item,nbt={Item:{tag:{stats_item:1b}}},tag=!new_stats] unless data entity @s Thrower run kill @s
execute as @a[tag=refresh] run function item:shop/refresh_gold
execute as @a[tag=refresh] run function item:shop/refresh_green
tag @a[tag=refresh] remove refresh