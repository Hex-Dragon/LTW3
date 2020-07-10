# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
title @s actionbar ""

# 重置玩家血量上限
execute as @a run attribute @s generic.max_health base set 20

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 冒险模式
gamemode adventure

# 传送玩家
tp @s 10 16 10
