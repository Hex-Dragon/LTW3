# as player at @s

# 添加操作者tag
tag @s add rgb_op

# 读取数据
execute as @e[type=marker,tag=rgb_rule] run function mini:rgb/game/read_data

# 测试状态
execute as @e[type=marker,tag=rgb_rule] run data modify entity @s data.enable set value 1b
function mini:rgb/game/check_conditions

# 执行事件
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b}}] run function mini:rgb/game/handle_event

# 写入数据
execute as @e[type=marker,tag=rgb_rule] run function mini:rgb/game/write_data

# 归还操作者tag
tag @s remove rgb_op