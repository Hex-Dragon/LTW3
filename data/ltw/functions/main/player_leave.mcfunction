# 任意玩家下线时触发
execute as @a at @s run function lib:sounds/error

execute store result score $t_count mem if entity @a[tag=!watcher]
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score $t_count mem matches ..1 run function ltw:main/game_end
execute if score $state mem matches 1.. if score $game_type mem matches 1 if score $t_count mem matches ..1 run tellraw @a {"text": "由于玩家人数不足, 游戏直接结束!","color":"red"}

# 热土豆检测
execute if score $state mem matches 5 if score $mini_type mem matches 3 run function mini:hotpm/game/check_potato


# TODO : 快捷栏最后一格固定为屏障，禁止使用，这样可以在部分小游戏中提供专用物品
# TODO : 如果在熔炉中放入魔晶石（暂时用紫色染料代替），则显示提示并且炸毁熔炉
# TODO : 判断玩家背包中的魔晶石数量（暂时用紫色染料代替），每一个魔晶石提供 -10% 速度和 +0.5 击退抗性
