# 地狱门音效
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 2 if score $parkour_door mem matches 1 run playsound block.portal.ambient ambient @a 1014.5 22 1057.5

# 强制开门
execute if score $countdown mem matches 0 if score $parkour_door mem matches 0 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"text": "一股神秘的力量打开了大门!","color":"green"}]
execute if score $countdown mem matches 0 if score $parkour_door mem matches 0 run function mini:parkour/game/open_the_door