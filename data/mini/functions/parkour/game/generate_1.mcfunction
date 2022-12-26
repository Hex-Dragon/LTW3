# 随机选择一个宝藏点生成
tag @e[tag=treasure] add cangen

# 旁边 3 格没有其他奖励物品
execute as @e[tag=bonus_item] at @s run tag @e[tag=treasure,distance=..3] remove cangen
# 旁边 8 格没有玩家
execute as @a[tag=mini_running] at @s run tag @e[tag=treasure,distance=..8] remove cangen

# 生成奖励物品
execute as @e[tag=cangen,sort=random,limit=1] at @s run function item:bonus_item/gameparty/auto/low3