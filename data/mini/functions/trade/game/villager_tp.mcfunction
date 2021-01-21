tag @s add tempPlayerTp
execute as @e[type=villager,tag=TradePlayer] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run tp @s @a[tag=tempPlayerTp,limit=1]
execute as @e[type=villager,tag=TradePlayer] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run tag @s add tpPlayer
tag @s remove tempPlayerTp
