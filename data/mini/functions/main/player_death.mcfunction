# 玩家死亡后触发
execute if score $mini_type mem matches 5 run function mini:zombie/player_failed
