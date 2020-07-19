#as player
#trigger by advancement
advancement revoke @s only item:container/place
scoreboard players set #container.got mem 0
scoreboard players set #container.dist mem 0
execute at @s anchored eyes positioned ^ ^ ^1 run function item:container/placed/recu