scoreboard players add $player_id mem 1
scoreboard players operation @a[team=playing,scores={player_id=0},limit=1,sort=random] player_id = $player_id mem
execute if entity @a[team=playing,scores={player_id=0}] run function ltw:state/0/set_player_id
