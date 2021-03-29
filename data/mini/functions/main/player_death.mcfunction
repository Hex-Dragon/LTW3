# 玩家死亡后触发
execute if score $mini_type mem matches 5 run function mini:phantom/player_failed
execute if score $mini_type mem matches 6 run function mini:diamond/player_death
execute if score $mini_type mem matches 7 run function mini:main/player_failed
execute if score $mini_type mem matches 8 run function mini:trade/player_death
