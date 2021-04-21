# 玩家死亡后触发
execute if score $mini_type mem matches 5 run function mini:phantom/player_failed
execute if score $mini_type mem matches 201 run function mini:ass/player_death
execute if score $mini_type mem matches 101 run function mini:diamond/player_death
execute if score $mini_type mem matches 102 run function mini:trade/player_death
