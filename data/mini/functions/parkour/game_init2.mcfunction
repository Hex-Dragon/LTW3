
# 清理残余实体
kill @e[type=falling_block,tag=parkour_block]
kill @e[tag=treasure_item]
function mini:main/kill_entity

# 生成节奏方块实体
function mini:parkour/game/marker_spawn

# 生成传送门实体
summon minecraft:falling_block 1014 21 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 21 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 22 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 22 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 23 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 23 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}

# 生成物品
execute positioned 1014.50 19.50 1024.50 run function item:bonus_item/gameparty/auto/low
execute positioned 1015.50 12.00 1019.50 run function item:bonus_item/gameparty/auto/low2
execute positioned 1024.50 30.50 1038.50 run function item:bonus_item/gameparty/auto/low2
execute positioned 1004.50 18.50 1043.50 run function item:bonus_item/gameparty/auto/low2

# 生成宝藏实体
#summon armor_stand 1009.50 14.50 1007.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1020.50 15.50 1016.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1008.50 30.50 1020.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1011.50 19.50 1058.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1026.50 18.50 1047.00 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1004.50 18.50 1043.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1013.00 08.50 1041.00 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1007.50 13.50 1025.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1024.50 29.50 1038.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
#summon armor_stand 1014.50 19.50 1024.50 {Tags:["treasure_item"],DisabledSlots:7967,ArmorItems:[{},{},{},{id:"chest",Count:1}],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Team:"gold"}
