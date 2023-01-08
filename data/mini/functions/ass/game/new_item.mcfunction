title @a subtitle {"text":"❇ 奖励物资已在空中部署 ❇","color":"aqua"}
title @a times 1 60 3
title @a title ""
playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2
scoreboard players set $new_item_cd mem 0

# 随机选择生成组
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 3
function lib:random

# 生成物资
execute if score $random mem matches 0 positioned 1023.5 21 7009.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 0 positioned 1008.5 21 7024.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 1008.5 21 7009.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 1023.5 21 7024.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 2 positioned 1007.0 21 7016.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 2 positioned 1025.0 21 7017.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 3 positioned 1016.5 21 7026.0 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 3 positioned 1015.5 21 7008.0 run function item:bonus_item/gameparty/auto/low
execute as @e[tag=bonus_item] run data modify entity @s NoGravity set value 0b