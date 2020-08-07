summon item ~ ~ ~ {Item:{id:"red_dye",Count:1b,tag:{LockTempItem:1b,display:{Name:'{"text":"非法物品","color":"red"}'}}},Tags:["LockTempItem"]}
data modify entity @e[type=item,tag=LockTempItem,limit=1] Item set from entity @s Inventory[{Slot:8b}]
data modify entity @e[type=item,tag=LockTempItem,limit=1] PickupDelay set value 0
data modify entity @e[type=item,tag=LockTempItem,limit=1] Thrower set from entity @s UUID
execute as @e[type=item,tag=LockTempItem,limit=1] run function item:disable_throw
replaceitem entity @s hotbar.8 air