# as rule marker
# with rgb_op

# 加分类事件
execute if data entity @s data.events[{type:"add_red"}] run function mini:rgb/game/events/add_red
execute if data entity @s data.events[{type:"add_green"}] run function mini:rgb/game/events/add_green
execute if data entity @s data.events[{type:"add_blue"}] run function mini:rgb/game/events/add_blue

# 重置状态
data remove entity @s data.player.conditions