# 当玩家捡起物品时触发

gamemode spectator
tag @s remove selecting
execute unless entity @a[tag=selecting] run function ltw:state/7/next
