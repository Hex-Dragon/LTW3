execute store result score @s temp2 run data get entity @s Xp
execute if entity @s[nbt={VillagerData:{level:4}}] if score @s Xp matches 250.. run tag @s add upgradeVillager
execute if entity @s[nbt={VillagerData:{level:4}}] if score @s Xp matches 250.. run data modify entity @s VillagerData.level set value 5
execute if entity @s[nbt={VillagerData:{level:3}}] if score @s Xp matches 150.. run tag @s add upgradeVillager
execute if entity @s[nbt={VillagerData:{level:3}}] if score @s Xp matches 150.. run data modify entity @s VillagerData.level set value 4
execute if entity @s[nbt={VillagerData:{level:2}}] if score @s Xp matches 70.. run tag @s add upgradeVillager
execute if entity @s[nbt={VillagerData:{level:2}}] if score @s Xp matches 70.. run data modify entity @s VillagerData.level set value 3