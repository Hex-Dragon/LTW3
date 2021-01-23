scoreboard players add @s temp 1
execute positioned ^ ^ ^0.2 if block ~ ~ ~ #mini:redefined_air if block ~ ~1 ~ #mini:redefined_air if score @s temp matches ..10 run function mini:trade/game/villager_tp3
tp @s[tag=tpTemp] ~ ~ ~ facing entity @a[tag=tempPlayerTp,limit=1]
tag @s remove tpTemp