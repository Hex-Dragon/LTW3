# as player
# with rgb_new_rule

data modify entity @e[type=marker,tag=rgb_new_rule,limit=1] data.players prepend value {id:0s}
execute store result entity @e[type=marker,tag=rgb_new_rule,limit=1] data.players[0].id short 1 run scoreboard players get @s player_id