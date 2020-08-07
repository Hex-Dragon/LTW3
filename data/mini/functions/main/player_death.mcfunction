# 玩家死亡后触发
execute if score $mini_type mem matches 5 run function mini:phantom/player_failed
execute if score $mini_type mem matches 6 run function mini:slime/player_failed
