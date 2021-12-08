# as rule marker
# 自动归零

execute store result score #temp_scr rgb_sys run data get entity @s data.player.conditions.shift
scoreboard players set #temp rgb_sys 0
execute store success score #temp rgb_sys if entity @a[tag=rgb_op,nbt={OnGround:1b},scores={rgb_shift=1..}] run scoreboard players add #temp_scr rgb_sys 1
execute if score #temp rgb_sys matches 0 run scoreboard players set #temp_scr rgb_sys 0

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"shift"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0

execute store result entity @s data.player.conditions.shift short 1 run scoreboard players get #temp_scr rgb_sys