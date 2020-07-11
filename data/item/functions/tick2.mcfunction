# 以玩家判定有Thrower便强制捡起
execute as @e[type=item] if data entity @s Thrower run function item:force_pickup