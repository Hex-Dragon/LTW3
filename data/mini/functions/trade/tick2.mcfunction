tag @e[type=villager,tag=TradePlayer] remove tpPlayer
# 处理村民糊脸
execute as @a[team=playing,gamemode=survival] if entity @s[nbt={SelectedItemSlot:8}] run function mini:trade/game/villager_tp
# 归位村民
tp @e[type=villager,tag=TradePlayer,tag=!tpPlayer] 1000 5 5000