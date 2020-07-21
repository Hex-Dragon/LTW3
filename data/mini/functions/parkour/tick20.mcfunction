# 地狱门音效
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 2 if score $parkour_door mem matches 1 run playsound block.portal.ambient ambient @a 1014.5 22 1057.5

# 强制开门：全部到达触发
function mini:main/update_player_count
execute store result score #arrived mem if entity @a[x=1014.0,y=20.0,z=1055.0,dx=4,dy=4,dz=4,tag=mini_running,tag=!watcher,scores={mini_score=-10..}]
scoreboard players operation #not_arrive mem = $player_alive mem
scoreboard players operation #not_arrive mem -= #arrived mem
execute if score #not_arrive mem matches 0 if score $parkour_door mem matches 0 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"text": "众人合力推开了大门!","color":"green"}]
execute if score #not_arrive mem matches 0 if score $parkour_door mem matches 0 run function mini:parkour/game/open_the_door

# 强制开门：倒计时 80s 触发
execute if score $countdown mem matches 0 if score $parkour_door mem matches 0 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"text": "一股神秘的力量推开了大门!","color":"green"}]
execute if score $countdown mem matches 0 if score $parkour_door mem matches 0 run function mini:parkour/game/open_the_door
