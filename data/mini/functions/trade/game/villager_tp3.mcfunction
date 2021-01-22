execute positioned ^ ^ ^0.2 if block ~ ~ ~ air if block ~ ~1 ~ air if entity @s[distance=..2] run function mini:trade/game/villager_tp3
tp @s[tag=tpTemp] ~ ~ ~ facing entity @a[tag=tempPlayerTp,limit=1]
tag @s remove tpTemp