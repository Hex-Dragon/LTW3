execute store result score @s temp run data get entity @s VillagerData.level
execute store result score @s temp2 run data get entity @s Xp
execute if score @s temp matches 4 if score @s temp2 matches 250.. run tag @s add upgradeVillager
execute if score @s temp matches 4 if score @s temp2 matches 250.. run data modify entity @s VillagerData.level set value 5
execute if score @s temp matches 3 if score @s temp2 matches 150.. run tag @s add upgradeVillager
execute if score @s temp matches 3 if score @s temp2 matches 150.. run data modify entity @s VillagerData.level set value 4
execute if score @s temp matches 2 if score @s temp2 matches 70.. run tag @s add upgradeVillager
execute if score @s temp matches 2 if score @s temp2 matches 70.. run data modify entity @s VillagerData.level set value 3