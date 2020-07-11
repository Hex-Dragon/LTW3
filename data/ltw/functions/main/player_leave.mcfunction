# 任意玩家下线时触发
execute as @a at @s run function lib:sounds/error

execute store result score $t_count mem if entity @a[tag=!watcher]
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score $t_count mem matches ..1 run function ltw:main/game_end
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score $t_count mem matches ..1 run tellraw @a {"text": "由于玩家人数不足, 游戏直接结束!","color":"red"}

# 热土豆检测
execute if score $state mem matches 5 if score $mini_type mem matches 3 run function mini:hotpm/game/check_potato


# TODO : [HIM] 将 colormatch 的地图缩小到 20x20
# TODO : [010/HIM] 快捷栏锁定系统