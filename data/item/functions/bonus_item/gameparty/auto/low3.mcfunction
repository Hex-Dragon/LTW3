# 根据轮数生成对应的物品

# 品质：生成一个 1~14 的 randomarray，每次从其中取下一个数
execute unless data storage ltw:mini qualities[0] run function item:bonus_item/new_array
execute store result score #quality mem run data get storage ltw:mini qualities[0]
data remove storage ltw:mini qualities[0]

# 根据品质生成不同的物品
# 金粒：12x
execute if score #quality mem matches ..12 run loot spawn 0 0 0 loot item:gold1
execute if score #quality mem matches ..12 as @e[type=item,x=0,y=0,z=0,dx=0,dy=0,dz=0,limit=1] positioned ~ ~ ~ run function item:bonus_item/gameparty/wrap/gray
# 1 积分：1x
execute if score #quality mem matches 13 run loot spawn 0 0 0 loot item:score1
execute if score #quality mem matches 13 as @e[type=item,x=0,y=0,z=0,dx=0,dy=0,dz=0,limit=1] positioned ~ ~ ~ run function item:bonus_item/gameparty/wrap/white
# 白色：1x
execute if score #quality mem matches 14.. if score $round mem matches ..3 run function item:bonus_item/gameparty/mixed/white
execute if score #quality mem matches 14.. if score $round mem matches 4.. run function item:bonus_item/gameparty/score/white
