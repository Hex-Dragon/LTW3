# 计算应有土豆数量
execute if score $player_alive mem matches 6..8 run scoreboard players set $potato_count mem 3
execute if score $player_alive mem matches 4..5 run scoreboard players set $potato_count mem 2
execute if score $player_alive mem matches 2..3 run scoreboard players set $potato_count mem 1
execute if score $player_alive mem matches 1 run scoreboard players set $potato_count mem 0

# 计算当前土豆数量
execute store result score $current_potato mem if entity @a[tag=pm_holding]

# 计算需求土豆数量
scoreboard players operation $new_potato_count mem = $potato_count mem
scoreboard players operation $new_potato_count mem -= $current_potato mem

# 生成土豆
execute if score $new_potato_count mem matches 1.. run function mini:hotpm/game/pm_init