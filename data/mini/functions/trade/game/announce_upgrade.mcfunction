tag @s add self
tellraw @a[tag=!self] ["",{"text":">> ","color":"green","bold":true},{"selector":"@s"},"的村民升到了",{"nbt":"VillagerData.level","entity":"@e[type=villager,limit=1,tag=upgradeVillager]","color":"green"},{"text":"级","color":"green"}]
tellraw @s ["",{"text":">> ","color":"green","bold":true},"你的村民升到了",{"nbt":"VillagerData.level","entity":"@e[type=villager,limit=1,tag=upgradeVillager]","color":"green"},{"text":"级","color":"green"}]
execute at @s run playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000
tag @s remove self