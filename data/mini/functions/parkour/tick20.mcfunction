# 地狱门音效
execute if score $countdown mem matches 0 if score $parkour_door mem matches 1 run playsound block.portal.ambient ambient @a 1014.5 22 1057.5
execute unless score $countdown mem matches 1.. run scoreboard players set $countdown mem 3