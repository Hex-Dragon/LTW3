# 计算玩家数量
execute store result score $alive_now mem if entity @a[tag=mini_running,tag=!watcher]

# 比较玩家数量
execute unless score $alive_now mem = $alive mem run function mini:main/player_leave

# 重置玩家数量
execute unless score $alive_now mem = $alive mem run scoreboard players operation $alive mem = $alive_now mem
