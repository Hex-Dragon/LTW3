# 计分板初始化
scoreboard players reset * mini_score
scoreboard players reset * mini_heart

# 小游戏初始化
execute if score $mini_type mem matches 1 run function mini:parkour/game_init
execute if score $mini_type mem matches 2 run function mini:tntrun/game_init
execute if score $mini_type mem matches 3 run function mini:hotpm/game_init
execute if score $mini_type mem matches 4 run function mini:colormatch/game_init

# FIXME [010/HIM] 旁观者会在侧边栏显示为 0 分（龙猫：我真的不知道咋回事了.jpg）
# FIXME [LTCat/HIM] 删除血量在list（可能belowname）的显示修复如上bug