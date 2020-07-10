# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"yellow","bold": false},{"text":" 被掉入了陷阱！","color":"white","bold": false}]

# 失去一颗心
function mini:main/player_lose_heart

# 给予本轮无敌
execute if entity @s[tag=mini_running] run tp @s ~ 35 ~
execute if entity @s[tag=mini_running] run tag @s add color_match_fall
