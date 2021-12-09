# as rule marker
# with rgb_op

# 分数事件
execute if data entity @s data.events[{type:"add_red"}] run function mini:rgb/game/events/add_red
execute if data entity @s data.events[{type:"add_green"}] run function mini:rgb/game/events/add_green
execute if data entity @s data.events[{type:"add_blue"}] run function mini:rgb/game/events/add_blue
execute if data entity @s data.events[{type:"set_red"}] run function mini:rgb/game/events/set_red
execute if data entity @s data.events[{type:"set_green"}] run function mini:rgb/game/events/set_green
execute if data entity @s data.events[{type:"set_blue"}] run function mini:rgb/game/events/set_blue

# 效果事件
execute if data entity @s data.events[{type:"effect"}] run function mini:rgb/game/events/effect

# 方块事件
execute if data entity @s data.events[{type:"place_air"}] run function mini:rgb/game/events/place_air
execute if data entity @s data.events[{type:"place_tnt"}] run function mini:rgb/game/events/place_tnt

# 完成游戏
execute if data entity @s data.events[{type:"finish"}] run function mini:rgb/game/events/finish

# 重置状态
data remove entity @s data.player.conditions