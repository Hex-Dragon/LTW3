advancement grant @a[tag=mini_running] only ltw:vs/colormatch1
tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"text": "色彩迷阵的切换速度已达满速！","color":"gold"}]
playsound minecraft:entity.ender_dragon.growl player @a 0 1000000 0 1000000 1.5
scoreboard players set #max_speed mem 1