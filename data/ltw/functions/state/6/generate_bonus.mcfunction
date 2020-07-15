# 生成奖励物品
kill @e[type=item]

execute store result score $t_bonus_count mem if entity @a[tag=!watcher]
# scoreboard players add $t_bonus_count mem 1
execute if score $t_bonus_count mem matches 1.. positioned 17.5 10.2 1967.5 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 2.. positioned 19.5 10.2 1962.5 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 3.. positioned 24.5 10.2 1960.5 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 4.. positioned 29.5 10.2 1962.5 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 5.. positioned 31.5 10.2 1967.5 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 6.. positioned 29.5 10.2 1972.5 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 7.. positioned 24.5 10.2 1974.5 run function item:bonus_item/rank/random
execute if score $t_bonus_count mem matches 8.. positioned 19.5 10.2 1972.5 run function item:bonus_item/rank/random

# 生成拾取背景
execute positioned 17.0 10.0 1967.0 run function ltw:state/6/generate_background
execute positioned 19.0 10.0 1962.0 run function ltw:state/6/generate_background
execute positioned 24.0 10.0 1960.0 run function ltw:state/6/generate_background
execute positioned 29.0 10.0 1962.0 run function ltw:state/6/generate_background
execute positioned 31.0 10.0 1967.0 run function ltw:state/6/generate_background
execute positioned 29.0 10.0 1972.0 run function ltw:state/6/generate_background
execute positioned 24.0 10.0 1974.0 run function ltw:state/6/generate_background
execute positioned 19.0 10.0 1972.0 run function ltw:state/6/generate_background
