# 防止玩家丢弃物品：如果物品存在 Thrower 则要求强制捡起（在生存小游戏中关闭）
execute unless score $state mem matches 5 as @e[type=item] if data entity @s Thrower run function lib:force_pickup_item
execute if score $state mem matches 5 if score $is_survival_minigame mem matches 0 as @e[type=item] if data entity @s Thrower run function lib:force_pickup_item

# 清理锁定暂存物品
kill @e[type=item,tag=LockTempItem]

# TODO: 未完成的重构

## 检测玩家格子锁定
#execute if score $state mem matches 1.. as @a[team=!debug] run function item:disable_slot/check_slot

## 检查玩家拾取奖励物品
#execute as @a if data entity @s Inventory[{"tag":{"bonus_new":1b}}] run function item:bonus_item/call

## 检查购买物品
#execute as @a run function item:shop/check