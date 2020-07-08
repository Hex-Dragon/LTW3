# 进行受伤提示
tellraw @a[tag=damage_taken,tag=damage_dealt] [{"text":"[!] ","color":"red"},{"text":"你对自己造成了","color":"white"},{"text":"0.0","color":"red"},{"text":"点伤害","color":"white"}]

# 重置分数
scoreboard players set @a[tag=damage_taken] damage_counter1 0
scoreboard players set @a[tag=damage_taken] damage_counter2 0
scoreboard players reset @a[tag=damage_taken] damage_taken

# 重置tag
tag @a[tag=damage_taken] remove damage_taken
tag @a[tag=damage_dealt] remove damage_dealt