summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b,tag:{LockTempItem:1b,display:{Name:'{"text":"非法物品","color":"red"}'}}},Tags:["LockTempItem","PopItem"]}
function item:pop_slot/select_item
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}},tag=LockTempItem]
data modify entity @e[type=item,tag=LockTempItem,limit=1] Thrower set from entity @s UUID
tag @e[type=item,tag=LockTempItem] remove LockTempItem