
# 防止玩家丢弃物品：如果物品存在 Thrower 则要求强制捡起
execute as @e[type=item] if data entity @s Thrower run function item:disable_throw

# 检查玩家拾取奖励物品
execute as @a if data entity @s Inventory[{"tag":{"bonus_new":1b}}] run function item:bonus_item/call

# 检测玩家第九格锁定
execute if score $state mem matches 1.. as @a run function item:disable_slot/check_slot

# 检查购买物品
execute as @a run function item:shop/check