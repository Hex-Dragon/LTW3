# 玩家失去一条命时调用此函数

# 检测不死图腾
execute if score @s mini_heart matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] run tag @s add have_totem
execute if score @s mini_heart matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying"}]}] run tag @s add have_totem
execute if entity @s[tag=have_totem] run effect clear @s resistance
execute if entity @s[tag=have_totem] run effect give @s instant_damage 1 10 true
execute if entity @s[tag=have_totem] run effect give @s instant_damage 1 10 true
schedule function mini:main/lose_heart_effect 1t

# 减少命
execute if score @s[tag=!have_totem] mini_heart matches 1.. run scoreboard players remove @s mini_heart 1
execute at @s run function lib:sounds/hurt
# 计算血量
function mini:main/player_max_health
# 判定失败
execute if score @s mini_heart matches 0 run function mini:main/player_failed
