# 任意玩家下线时触发
execute as @a at @s run function lib:sounds/error

# 由于玩家人数不足，强制结束游戏
execute store result score #count mem if entity @a[tag=!watcher]
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score #count mem matches ..1 run function ltw:main/game_end
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score #count mem matches ..1 run tellraw @a {"text": "由于玩家人数不足, 游戏直接结束!","color":"red"}

# 如果携带热土豆的玩家掉线，则重新生成土豆
execute if score $state mem matches 5 if score $mini_type mem matches 3 run function mini:hotpm/player_leave

# FIXME : [010/HIM] 奖励选择房和跑酷图还有结构方块的线
# FIXME : <! 紧急> [010] 物品依然可能给不到人
# FIXME : [010/HIM] 关闭原版进度，它会给玩家经验值什么的很烦