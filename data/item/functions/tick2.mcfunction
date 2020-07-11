# 防止玩家丢弃物品：如果物品存在 Thrower 则要求强制捡起
# execute as @e[type=item] if data entity @s Thrower run function item:disable_throw