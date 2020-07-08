# 重置判定值
scoreboard players set 除数 damage_counter1 10

# 分数运算
execute as @a[scores={damage_taken=0..},tag=damage_taken] run scoreboard players operation @s damage_counter1 = @s damage_taken
execute as @a[scores={damage_taken=0..},tag=damage_taken] run scoreboard players operation @s damage_counter2 = @s damage_taken
execute as @a[scores={damage_taken=0..},tag=damage_taken] run scoreboard players operation @s damage_counter1 /= 除数 damage_counter1
execute as @a[scores={damage_taken=0..},tag=damage_taken] run scoreboard players operation @s damage_counter2 %= 除数 damage_counter1

# 进行受伤提示
tellraw @a[tag=damage_taken] [{"text":"[!] ","color":"red"},{"selector":"@a[tag=damage_dealt]","color":"white"},{"text":"对你造成了","color":"white"},{"color":"red","score":{"name":"@a[tag=damage_taken,scores={damage_taken=0..}]","objective":"damage_counter1"}},{"text":".","color":"red"},{"color":"red","score":{"name":"@a[tag=damage_taken,scores={damage_taken=0..}]","objective":"damage_counter2"}},{"text":"点伤害","color":"white"}]
tellraw @a[tag=damage_dealt] [{"text":"[!] ","color":"red"},{"text":"你对","color":"white"},{"selector":"@a[tag=damage_taken]","color":"white"},{"text":"造成了","color":"white"},{"color":"red","score":{"name":"@a[tag=damage_taken,scores={damage_taken=0..}]","objective":"damage_counter1"}},{"text":".","color":"red"},{"color":"red","score":{"name":"@a[tag=damage_taken,scores={damage_taken=0..}]","objective":"damage_counter2"}},{"text":"点伤害","color":"white"}]

# 重置分数
scoreboard players set @a[tag=damage_taken] damage_counter1 0
scoreboard players set @a[tag=damage_taken] damage_counter2 0
scoreboard players reset @a[tag=damage_taken] damage_taken

# 重置tag
tag @a[tag=damage_taken] remove damage_taken
tag @a[tag=damage_dealt] remove damage_dealt