tag @s add tempPlayerTp
execute as @e[type=armor_stand,tag=VillagerMarker] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run tag @s add tempVillagerTp
execute as @e[type=armor_stand,tag=VillagerMarker] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run tag @s add tpPlayer
execute at @s run tp @e[type=armor_stand,tag=tempVillagerTp] ~ ~ ~
# data modify entity @e[type=armor_stand,tag=tempVillagerTp,limit=1] Pos set from entity @s Pos
tag @e[type=armor_stand,tag=tempVillagerTp] remove tempVillagerTp
tag @s remove tempPlayerTp
