# 生成混合奖励

# 传送
tp @a[team=!debugging] 24.5 11.0 1967.5

# 设置轮数
scoreboard players set $round mem 1

# 清理残余实体
kill @e[type=item]
kill @e[type=arrow]
kill @e[type=trident]

# 生成奖励
execute positioned 17.5 10.2 1967.5 run function item:bonus_item/gameparty/mixed/random
execute positioned 19.5 10.2 1962.5 run function item:bonus_item/gameparty/mixed/random
execute positioned 24.5 10.2 1960.5 run function item:bonus_item/gameparty/mixed/random
execute positioned 29.5 10.2 1962.5 run function item:bonus_item/gameparty/mixed/random
execute positioned 31.5 10.2 1967.5 run function item:bonus_item/gameparty/mixed/random
execute positioned 29.5 10.2 1972.5 run function item:bonus_item/gameparty/mixed/random
execute positioned 24.5 10.2 1974.5 run function item:bonus_item/gameparty/mixed/random
execute positioned 19.5 10.2 1972.5 run function item:bonus_item/gameparty/mixed/random

# 生成拾取背景
execute positioned 17.0 10.0 1967.0 run function ltw:state/6/generate_background
execute positioned 19.0 10.0 1962.0 run function ltw:state/6/generate_background
execute positioned 24.0 10.0 1960.0 run function ltw:state/6/generate_background
execute positioned 29.0 10.0 1962.0 run function ltw:state/6/generate_background
execute positioned 31.0 10.0 1967.0 run function ltw:state/6/generate_background
execute positioned 29.0 10.0 1972.0 run function ltw:state/6/generate_background
execute positioned 24.0 10.0 1974.0 run function ltw:state/6/generate_background
execute positioned 19.0 10.0 1972.0 run function ltw:state/6/generate_background

tellraw @a ["",{"text": ">> ","color": "aqua","bold": true}, {"text": "已生成测试用混合奖励!","color": "aqua"}]
