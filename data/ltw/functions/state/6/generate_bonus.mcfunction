# 生成奖励物品
kill @e[type=item]

execute store result score $t_bonus_count mem if entity @a[tag=!watcher]
# scoreboard players add $t_bonus_count mem 1
execute if score $t_bonus_count mem matches 1.. positioned 17.50 10.50 1967.50 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 2.. positioned 19.50 10.50 1962.50 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 3.. positioned 24.50 10.50 1960.50 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 4.. positioned 29.50 10.50 1962.50 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 5.. positioned 31.50 10.50 1967.50 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 6.. positioned 29.50 10.50 1972.50 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 7.. positioned 24.50 10.50 1974.50 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 8.. positioned 19.50 10.50 1972.50 run function item:bonus_item/rank/random

# 生成拾取窗口
#execute as @e[type=item] at @s run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 air
#execute as @e[type=item] at @s run fill ~-0.2 ~1 ~-0.2 ~0.2 ~1 ~0.2 barrier

# 防止幽灵实体，分 tick 执行
schedule function ltw:state/6/generate_bonus2 1t
