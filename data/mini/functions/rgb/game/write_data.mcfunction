# as rule marker
# with rgb_op

data modify storage ltw:mini rgb.temp_data set from entity @s data.players
data modify storage ltw:mini rgb.temp_data1 set from entity @s data.player
data modify storage ltw:mini rgb.temp_data2 set value []
function mini:rgb/game/write_data_
data modify entity @s data.players set from storage ltw:mini rgb.temp_data2