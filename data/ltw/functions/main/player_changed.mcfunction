# 初始化玩家数量
execute unless score $player_count mem matches -2147483648..2147483647 store result score $player_count mem if entity @a
# 计算玩家数量
execute store result score $player_count_now mem if entity @a
# 比较玩家数量
execute unless score $player_count_now mem = $player_count mem run function ltw:main/player_leave

# 重置玩家数量
execute unless score $player_count_now mem = $player_count mem run scoreboard players operation $player_count mem = $player_count_now mem
