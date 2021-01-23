execute positioned ^ ^ ^0.4 if block ~ ~ ~ #mini:redefined_air if block ~ ~1 ~ #mini:redefined_air if entity @s[distance=..2] run function mini:trade/game/villager_tp3
tp @s[tag=tpTemp] ~ ~ ~ facing entity @a[tag=tempPlayerTp,limit=1]
tag @s remove tpTemp