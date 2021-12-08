# as rule marker
# with rgb_op

execute store result score #temp_id rgb_sys run data get storage ltw:mini rgb.temp_data[0].id
execute unless score #temp_id rgb_sys = @a[tag=rgb_op,limit=1] player_id run data remove storage ltw:mini rgb.temp_data[0]
execute unless score #temp_id rgb_sys = @a[tag=rgb_op,limit=1] player_id run function mini:rgb/game/read_data_