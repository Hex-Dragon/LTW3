# 生成随机品质的物品

# 品质：生成一个 1~14 的 randomarray，每次从其中取下一个数
execute unless data storage ltw:mini qualities[0] run function item:bonus_item/new_array
execute store result score #quality mem run data get storage ltw:mini qualities[0]
data remove storage ltw:mini qualities[0]

# 根据品质生成不同的物品
# 白色：10x
execute if score #quality mem matches ..10 run function item:bonus_item/gameparty/mixed/white
# 蓝色：4x
execute if score #quality mem matches 11.. run function item:bonus_item/gameparty/mixed/green
