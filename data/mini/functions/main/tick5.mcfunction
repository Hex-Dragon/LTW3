
# 触发单个模块
execute if score $mini_type mem matches 1 run function mini:parkour/tick5
execute if score $mini_type mem matches 2 run function mini:tntrun/tick5
execute if score $mini_type mem matches 3 run function mini:hotpm/tick5

# 同步生命值
scoreboard players reset * health_disp
scoreboard players set @a[gamemode=!spectator] health_disp 20
execute as @a[gamemode=!spectator,scores={health=1..}] run scoreboard players operation @s health_disp = @s health
execute as @a run scoreboard players operation @s mini_heart_disp = @s mini_heart
execute as @a run scoreboard players operation @s mini_heart_disp += @s mini_heart