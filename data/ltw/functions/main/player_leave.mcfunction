# 任意玩家下线时触发

execute store result score $t_count mem if entity @a[tag=!watcher]
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score $t_count mem matches ..2 run function ltw:main/game_end
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score $t_count mem matches ..2 run tellraw @a {"text": "由于玩家人数不足, 游戏直接结束!","color":"red"}

# TODO : 优化跑酷，让它更有趣！
# TODO : 将 colormatch 的地图缩小到 20x20