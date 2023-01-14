scoreboard players set $new_item_cd mem 0

# 随机选择生成组
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 1
function lib:random

# 生成物资
execute if score $random mem matches 0 positioned 1060.5 26 4002.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 0 positioned 1060.5 26 4018.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 1068.5 26 4010.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 1052.5 26 4010.5 run function item:bonus_item/gameparty/auto/low
execute as @e[tag=bonus_item] run data modify entity @s NoGravity set value 0b

# 显示提示
title @a subtitle {"text":"❇ 奖励物资已在空中部署 ❇","color":"aqua"}
title @a times 1 60 3
title @a title ""
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text":"奖励物资：","color":"aqua"},{"selector": "@e[tag=bonus_item]"}]
playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2