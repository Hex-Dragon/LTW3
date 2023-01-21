scoreboard players set $new_item_cd mem 0

# 随机选择生成组
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 2
function lib:random

# 生成物资
execute if score $random mem matches 0 positioned 1026.5 19.0 3021.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 0 positioned 1009.5 19.0 3005.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 1023.5 19.0 3008.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 1010.5 19.0 3022.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 2 positioned 1017.0 19.0 3024.0 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 2 positioned 1017.5 19.0 3005.5 run function item:bonus_item/gameparty/auto/low
execute as @e[tag=bonus_item] run data modify entity @s NoGravity set value 0b

# 显示提示
title @a subtitle {"text":"❇ 奖励物资已在空中部署 ❇","color":"aqua"}
title @a times 1 60 3
title @a title ""
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text":"奖励物资：","color":"aqua"},{"selector": "@e[tag=bonus_item]"}]
playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2