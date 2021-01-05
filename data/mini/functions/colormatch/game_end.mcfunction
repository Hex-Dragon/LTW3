# 当前游戏结束时触发
forceload remove 1001 4000 1075 4025

# 清理锁定格子
execute as @a[team=!debugging] run function item:disable_slot/disable_slot_7
execute as @a[team=!debugging] run function item:disable_slot/disable_slot_8