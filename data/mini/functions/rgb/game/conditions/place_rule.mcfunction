# as rule marker
# 放置 value 条规则

execute store result score #temp_scr rgb_sys run data get entity @s data.player.conditions.place_rule
scoreboard players operation #temp_scr rgb_sys += @a[tag=rgb_op,limit=1] rgb_place_rule

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"place_rule"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0

execute store result entity @s data.player.conditions.place_rule short 1 run scoreboard players get #temp_scr rgb_sys