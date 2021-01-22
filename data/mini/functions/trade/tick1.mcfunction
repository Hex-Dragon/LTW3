scoreboard players add $1tick mem 1
execute if score $1tick mem matches 1 as @e[type=villager,tag=TradePlayer] run data modify entity @s BABA set value "IS MORE"
execute if score $1tick mem matches 2 as @e[type=villager,tag=TradePlayer] run data modify entity @s BABA set value "IS LESS"
execute if score $1tick mem matches 2 run scoreboard players set $1tick mem 0
