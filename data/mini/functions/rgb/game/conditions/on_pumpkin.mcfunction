# as rule marker
# 自动归零

execute store result score #temp_scr rgb_sys run data get entity @s data.player.conditions.on_pumpkin
scoreboard players set #temp rgb_sys 0
execute store success score #temp rgb_sys as @a[tag=rgb_op,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ pumpkin run scoreboard players add #temp_scr rgb_sys 1
execute if score #temp rgb_sys matches 0 run scoreboard players set #temp_scr rgb_sys 0

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"on_pumpkin"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0

execute store result entity @s data.player.conditions.on_pumpkin short 1 run scoreboard players get #temp_scr rgb_sys