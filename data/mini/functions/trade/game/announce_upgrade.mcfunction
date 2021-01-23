tag @s add self

execute if entity @e[type=villager,limit=1,tag=upgradeVillager,nbt={VillagerData:{level:3}}] run tellraw @a[tag=!self] ["",{"text":">> ","color":"gold","bold":true},{"selector":"@s","color":"gold"}," 的村民到达了 ",{"text":"老手级","color":"gold"}]
execute if entity @e[type=villager,limit=1,tag=upgradeVillager,nbt={VillagerData:{level:4}}] run tellraw @a[tag=!self] ["",{"text":">> ","color":"gold","bold":true},{"selector":"@s","color":"gold"}," 的村民到达了 ",{"text":"专家级","color":"gold"}]
execute if entity @e[type=villager,limit=1,tag=upgradeVillager,nbt={VillagerData:{level:5}}] run tellraw @a[tag=!self] ["",{"text":">> ","color":"gold","bold":true},{"selector":"@s","color":"gold"}," 的村民到达了 ",{"text":"大师级","color":"gold"}]
execute as @a[tag=!self] at @s run function lib:sounds/error

execute if entity @e[type=villager,limit=1,tag=upgradeVillager,nbt={VillagerData:{level:3}}] run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你的村民到达了 ",{"text":" 老手级","color":"green"}]
execute if entity @e[type=villager,limit=1,tag=upgradeVillager,nbt={VillagerData:{level:4}}] run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你的村民到达了 ",{"text":" 专家级","color":"green"}]
execute if entity @e[type=villager,limit=1,tag=upgradeVillager,nbt={VillagerData:{level:5}}] run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你的村民到达了 ",{"text":" 大师级","color":"green"}]
execute as @a[tag=!self] at @s run function lib:sounds/levelup

tag @s remove self