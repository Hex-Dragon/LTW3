# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"yellow","bold": false},{"text":" 掉入了陷阱！","color":"white","bold": false}]

# 失去一颗心
function mini:main/player_lose_heart

# 拉回来
execute if entity @s[tag=mini_running] run tp @s ~ 17 ~
effect give @s levitation 7 255
effect give @s speed 7 2
