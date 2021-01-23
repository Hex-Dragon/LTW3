loot spawn ~ ~ ~ loot mini:trade_s
data modify entity @s Offers.Recipes append value {rewardExp:false,xp:20}
data modify entity @s Offers.Recipes[-1].buy set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.buy
data modify entity @s Offers.Recipes[-1].buyB set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.buyB
data modify entity @s Offers.Recipes[-1].maxUses set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.maxUses
data modify entity @s Offers.Recipes[-1].sell set from entity @e[type=item,nbt={Item:{tag:{TradeItem:1b}}},limit=1] Item.tag.sell
kill @e[type=item,nbt={Item:{tag:{TradeItem:1b}}}]
