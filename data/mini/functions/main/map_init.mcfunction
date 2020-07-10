# 计分板初始化
scoreboard players reset * mini_score
scoreboard players reset * mini_heart

# 小游戏初始化
execute if score $mini_type mem matches 1 run function mini:parkour/map_init
execute if score $mini_type mem matches 2 run function mini:tntrun/map_init
execute if score $mini_type mem matches 3 run function mini:hotpm/map_init
execute if score $mini_type mem matches 4 run function mini:colormatch/map_init

# 计算玩家数量
execute store result score $alive mem if entity @a[tag=mini_running,tag=!watcher]

# TODO 旁观者会在进入阶段 4 后显示 0 分