scoreboard players add $1tick mem 1
# execute if score $1tick mem matches 1 as @e[type=villager,tag=TradePlayer] run data modify entity @s CustomName set value '{"text":"BABA IS MORE"}'
# execute if score $1tick mem matches 2 as @e[type=villager,tag=TradePlayer] run data modify entity @s CustomName set value '{"text":"BABA IS LESS"}'

execute if score $1tick mem matches 1 as @e[type=villager,tag=TradePlayer] run data modify entity @s VillagerData.type set value "minecraft:snow"
execute if score $1tick mem matches 2 as @e[type=villager,tag=TradePlayer] run data modify entity @s VillagerData.type set value "minecraft:swamp"

execute if score $1tick mem matches 2 run scoreboard players set $1tick mem 0
