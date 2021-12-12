# as player

# 随机规则 0-100
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 13
function lib:random

execute if score $random mem matches 0..2 run loot replace block 0 0 1 container.0 loot mini:rgb/add_red
execute if score $random mem matches 3..5 run loot replace block 0 0 1 container.0 loot mini:rgb/add_green
execute if score $random mem matches 6..8 run loot replace block 0 0 1 container.0 loot mini:rgb/add_blue
execute if score $random mem matches 9..12 run loot replace block 0 0 1 container.0 loot mini:rgb/harmful
execute if score $random mem matches 13 run loot replace block 0 0 1 container.0 loot mini:rgb/finish

# 生成文本
data modify storage ltw:mini rgb.rule set from block 0 0 1 Items[0].tag
setblock 0 1 0 acacia_wall_sign destroy
function mini:rgb/game/gen_rule_text_1
data modify block 0 1 0 Text1 set value '[{"nbt":"Text1","block":"0 1 0","interpret":true},{"text":" -> ","color":"white"}]'
function mini:rgb/game/gen_rule_text_2
data modify block 0 0 1 Items[0].tag.EntityTag.CustomName set from block 0 1 0 Text1
data modify block 0 1 0 Text1 set value '[{"text":"规则：","color":"white","italic":false},{"nbt":"Text1","block":"0 1 0","interpret":true}]'
data modify block 0 0 1 Items[0].tag.display.Name set from block 0 1 0 Text1
data modify block 0 0 1 Items[0].tag.display.Lore set value ['{"text":"右键放置以启用此规则","italic":false,"color":"gray"}']

# 生成物品
setblock 0 0 0 jukebox replace
data modify block 0 0 0 RecordItem set from block 0 0 1 Items[0]
data modify block 0 0 0 RecordItem.tag.game_item set value 1b
data modify block 0 0 0 RecordItem.tag.rgb_newrule set value 1b
data modify block 0 0 0 RecordItem.tag.EntityTag.Tags set value ["rgb_new_rule"]
data modify block 0 0 0 RecordItem.tag.EntityTag.Small set value 1b
data modify block 0 0 0 RecordItem.tag.EntityTag.ArmorItems set value [{id:"minecraft:stone",Count:1s},{}]
data modify block 0 0 0 RecordItem.tag.EntityTag.ArmorItems[0].tag.conditions set from block 0 0 0 RecordItem.tag.conditions
data modify block 0 0 0 RecordItem.tag.EntityTag.ArmorItems[0].tag.events set from block 0 0 0 RecordItem.tag.events
setblock 0 0 0 air destroy
tag @s add rgb_temp
execute as @e[nbt={"Item":{"tag":{"rgb_newrule":1b}}},limit=1] run function mini:rgb/game/tp_new_item
tag @s remove rgb_temp
playsound minecraft:entity.item.pickup player @s