# at new position
# input: $rule_type rgb_sys

execute if score $rule_type rgb_sys matches 1 run loot replace block 0 0 1 container.0 loot mini:rgb/add_red
execute if score $rule_type rgb_sys matches 2 run loot replace block 0 0 1 container.0 loot mini:rgb/add_green
execute if score $rule_type rgb_sys matches 3 run loot replace block 0 0 1 container.0 loot mini:rgb/add_blue
execute if score $rule_type rgb_sys matches 4 run loot replace block 0 0 1 container.0 loot mini:rgb/finish

# 生成文本
data modify storage ltw:mini rgb.rule set from block 0 0 1 Items[0].tag
setblock 0 1 0 acacia_wall_sign destroy
function mini:rgb/game/gen_rule_text_1
data modify block 0 1 0 Text1 set value '[{"nbt":"Text1","block":"0 1 0","interpret":true},{"text":" -> ","color":"white"}]'
function mini:rgb/game/gen_rule_text_2

# 生成实体
summon armor_stand ~ ~ ~ {Tags:["rgb_new_rule"],Small:1b,ArmorItems:[{id:"minecraft:stone",Count:1b},{}],CustomNameVisible:1b}
data modify entity @e[tag=rgb_new_rule,limit=1] CustomName set from block 0 1 0 Text1
data modify entity @e[tag=rgb_new_rule,limit=1] ArmorItems[0].tag.conditions set from block 0 0 1 Items[0].tag.conditions
data modify entity @e[tag=rgb_new_rule,limit=1] ArmorItems[0].tag.events set from block 0 0 1 Items[0].tag.events
effect give @e[tag=rgb_new_rule] slow_falling 10
spreadplayers ~ ~ 1 1.5 false @e[tag=rgb_new_rule]
execute as @e[tag=rgb_new_rule] run function mini:rgb/game/add_rule