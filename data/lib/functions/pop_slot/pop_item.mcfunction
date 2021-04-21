summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b,tag:{LockTempItem:1b,display:{Name:'{"text":"非法物品","color":"red"}'}}},Tags:["LockTempItem","PopItem"]}
function lib:pop_slot/select_item
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},tag=LockTempItem]
# 不返还奇怪的东西
kill @e[type=item,nbt={Item:{tag:{game_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{lobby_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{LockItem:1b}}}]
data modify entity @e[type=item,tag=LockTempItem,limit=1] Thrower set from entity @s UUID
tag @e[type=item,tag=LockTempItem] remove LockTempItem