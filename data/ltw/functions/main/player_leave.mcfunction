# 任意玩家下线时触发
execute as @a at @s run function lib:sounds/error

# 由于玩家人数不足，强制结束游戏
execute store result score #count mem if entity @a[team=!watching]
execute if score $state mem matches 1.. if score #count mem matches ..2 run function ltw:main/game_end
execute if score $state mem matches 1.. if score #count mem matches ..2 run tellraw @a ["",{"text":">> ","color":"red","bold":true},{"text": "由于玩家不足, 游戏强制结束, 无名次金粒奖励……","color":"red","bold":false}]

# 如果携带热土豆的玩家掉线，则重新生成土豆
execute if score $state mem matches 5 run function mini:main/player_leave
