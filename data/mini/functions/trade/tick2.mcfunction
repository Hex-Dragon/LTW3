tag @e[type=area_effect_cloud,tag=VillagerMarker] remove tpPlayer
# 处理村民糊脸
execute as @a[team=playing,gamemode=survival] if entity @s[nbt={SelectedItemSlot:8}] run function mini:trade/game/villager_tp
# 归位村民
tp @e[type=area_effect_cloud,tag=VillagerMarker,tag=!tpPlayer] 1000 5 5000