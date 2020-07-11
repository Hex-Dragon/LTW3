# 告知玩家
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"yellow"}," 掉入了陷阱！"]

# 失去一颗心
function mini:main/player_lose_heart

# 拉上屏障
execute if entity @s[tag=mini_running] run tp @s ~ 27 ~
tag @s add color_match_fall
