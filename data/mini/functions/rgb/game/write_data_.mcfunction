# as rule marker
# with rgb_op

execute store result score #temp_id rgb_sys run data get storage ltw:mini rgb.temp_data[0].id
execute if score #temp_id rgb_sys = @a[tag=rgb_op,limit=1] player_id run data modify storage ltw:mini rgb.temp_data2 prepend from storage ltw:mini rgb.temp_data1
execute unless score #temp_id rgb_sys = @a[tag=rgb_op,limit=1] player_id run data modify storage ltw:mini rgb.temp_data2 prepend from storage ltw:mini rgb.temp_data[0]
data remove storage ltw:mini rgb.temp_data[0]
execute if data storage ltw:mini rgb.temp_data[0] run function mini:rgb/game/write_data_