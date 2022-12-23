# 显示小游戏排名
tellraw @s ["",{"text":"\n------  小游戏结束！ ------\n","color":"light_purple","bold":true}]

# 1
execute if score $show_score mem matches 1 run tellraw @s ["  ",{"text": "第一名 >  ","color":"red"},{"selector": "@a[tag=mini_rank1]","color":"red"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=mini_rank1]","objective": "mini_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if score $show_score mem matches 0 run tellraw @s ["  ",{"text": "第一名 >  ","color":"red"},{"selector": "@a[tag=mini_rank1]","color":"red"}]

# 2
execute if score $show_score mem matches 1 if entity @a[tag=mini_rank2] run tellraw @s ["  ",{"text": "第二名 >  ","color":"gold"},{"selector": "@a[tag=mini_rank2]","color":"gold"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=mini_rank2]","objective": "mini_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if score $show_score mem matches 0 if entity @a[tag=mini_rank2] run tellraw @s ["  ",{"text": "第二名 >  ","color":"gold"},{"selector": "@a[tag=mini_rank2]","color":"gold"}]

# 3
execute if score $show_score mem matches 1 if entity @a[tag=mini_rank3] run tellraw @s ["  ",{"text": "第三名 >  ","color":"yellow"},{"selector": "@a[tag=mini_rank3]","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=mini_rank3]","objective": "mini_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if score $show_score mem matches 0 if entity @a[tag=mini_rank3] run tellraw @s ["  ",{"text": "第三名 >  ","color":"yellow"},{"selector": "@a[tag=mini_rank3]","color":"yellow"}]

tellraw @s ""
