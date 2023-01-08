
# 给予状态效果
function mini:iron/give_effect
effect give @s slow_falling 4
effect give @s weakness 5 10 true
effect give @s resistance 5 10 true

# 传送玩家
tp @s[team=playing] 1016 280 5016
tp @s[team=watching] 1016 255 5016

# 清理锁定物品
clear @s crimson_button{LockItem:1b}
