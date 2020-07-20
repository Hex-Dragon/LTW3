# 地狱门音效
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 2 if score $parkour_door mem matches 1 run playsound block.portal.ambient ambient @a 1014.5 22 1057.5

# 强制开门：只差一个人没到触发
execute store result score #not_arrive mem unless entity @a[x=1015.0,y=20.0,z=1055.0,dx=2,dy=4,dz=4,gamemode=!spectator]
execute if score #not_arrive mem matches ..1 run scoreboard players set $countdown mem 0

# 强制开门：倒计时 90s 触发
execute if score $countdown mem matches 0 if score $parkour_door mem matches 0 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"text": "一股神秘的力量推开了大门!","color":"green"}]
execute if score $countdown mem matches 0 if score $parkour_door mem matches 0 run function mini:parkour/game/open_the_door
