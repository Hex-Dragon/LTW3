tag @s add tpPlayer
data modify entity @s Pos set from entity @a[tag=tempPlayerTp,limit=1] Pos
data modify entity @s Rotation[0] set from entity @a[tag=tempPlayerTp,limit=1] Rotation[0]
data modify entity @s Rotation[1] set value 0f
tag @s add tpTemp
scoreboard players set @s temp 0
execute at @s run function mini:trade/game/villager_tp3
execute if entity @a[tag=noVillager,tag=tempPlayerTp] at @s run function mini:trade/game/villager_rebirth
