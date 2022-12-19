execute if score @s temp matches 1 run loot spawn ~ ~ ~ loot mini:trade_s
execute if score @s temp matches 2 run loot spawn ~ ~ ~ loot mini:trade_a
execute if score @s temp matches 3 run loot spawn ~ ~ ~ loot mini:trade_b
execute if score @s temp matches 4 run loot spawn ~ ~ ~ loot mini:trade_c
execute if score @s temp matches 5 run loot spawn ~ ~ ~ loot mini:trade_d
execute if score @s temp matches 6 run loot spawn ~ ~ ~ loot mini:trade_e
data modify entity @s Offers.Recipes append value {rewardExp:false,xp:40}
data modify entity @s Offers.Recipes[-1].buy set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.buy
data modify entity @s Offers.Recipes[-1].buyB set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.buyB
data modify entity @s Offers.Recipes[-1].maxUses set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.maxUses
data modify entity @s Offers.Recipes[-1].sell set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.sell
kill @e[type=item,nbt={Item:{tag:{TradeItem:1b}}}]
