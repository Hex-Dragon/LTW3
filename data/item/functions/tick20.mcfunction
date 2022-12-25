
# 检测容器
function item:container/check/call

# 物品特效
execute as @e[tag=item_gray] at @s run particle minecraft:wax_on ~ ~0.3 ~ 0.15 0.15 0.15 0 2 normal
execute as @e[tag=item_white] at @s run particle minecraft:end_rod ~ ~0.6 ~ 0.15 0.15 0.15 0 1 normal