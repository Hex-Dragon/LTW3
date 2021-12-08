# as rule marker
# with rgb_op

data modify storage ltw:mini rgb.temp_data set from entity @s data.players
function mini:rgb/game/read_data_
data modify entity @s data.player set from storage ltw:mini rgb.temp_data[0]