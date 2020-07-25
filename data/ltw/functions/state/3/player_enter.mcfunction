# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
title @s actionbar ""

# 显示 Title
title @s times 5 50 5
title @s subtitle ""
execute if score $round mem matches ..5 run title @s title ["第 ",{"score": {"objective": "mem","name": "$round"}},"/6 轮"]
execute if score $round mem matches 6 run title @s title {"text":"最终轮","color":"gold"}

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s[tag=!debug] blindness 1000000 0 true

# 音效
execute at @s run function lib:sounds/levelup

# 自由旁观
gamemode spectator @s[tag=!debug]
spectate
