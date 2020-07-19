# 任意玩家下线时触发
execute as @a at @s run function lib:sounds/error

# 由于玩家人数不足，强制结束游戏
execute store result score #count mem if entity @a[tag=!watcher]
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score #count mem matches ..1 run function ltw:main/game_end
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score #count mem matches ..1 run tellraw @a {"text": "由于玩家人数不足, 游戏直接结束!","color":"red"}

# 如果携带热土豆的玩家掉线，则重新生成土豆
execute if score $state mem matches 5 if score $mini_type mem matches 3 run function mini:hotpm/player_leave

# FIXME : [010/HIM] 关闭原版进度，它会给玩家经验值什么的很烦
# TODO : [010] 如果熔炉内有下界之星（魔晶石），则显示提示并自爆
# TODO : [010/HIM] 为幻翼小游戏地图添加基础的照明，因为这个游戏里玩家莫得夜视
# TODO : [LTCat] 制作幻翼小游戏的原型
# TODO : [010/HIM] 在主阶段（state 2）玩家背包里每有一个下界之星（魔晶石），给予 -10% 减速