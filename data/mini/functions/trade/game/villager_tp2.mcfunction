tag @s add tpPlayer
tp @s @a[tag=tempPlayerTp,limit=1]
tag @s add tpTemp
execute at @a[tag=tempPlayerTp,limit=1] run tp @s ~ ~ ~ ~ 0
execute at @s run function mini:trade/game/villager_tp3
# execute if entity @a[tag=noVillager,tag=tempPlayerTp] at @s run function mini:trade/game/villager_rebirth
