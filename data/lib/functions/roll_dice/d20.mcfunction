scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 20
function lib:random
execute if score $random mem matches 20 run tellraw @a [{"text":">> ","color":"green","bold":true},{"selector":"@s","color":"gold","bold":false},{"text":"扔了个二十面幸运骰，掷出了D20=","color":"white","bold":false},{"score": {"name": "$random","objective": "mem"},"color":"gold"},{"text":"，大成功！","color":"white"}]
execute if score $random mem matches 11..19 run tellraw @a [{"text":">> ","color":"green","bold":true},{"selector":"@s","color":"gold","bold":false},{"text":"扔了个二十面幸运骰，掷出了D20=","color":"white","bold":false},{"score": {"name": "$random","objective": "mem"},"color":"dark_green"},{"text":"，还不错哟！","color":"white"}]
execute if score $random mem matches 2..10 run tellraw @a [{"text":">> ","color":"green","bold":true},{"selector":"@s","color":"gold","bold":false},{"text":"扔了个二十面幸运骰，掷出了D20=","color":"white","bold":false},{"score": {"name": "$random","objective": "mem"},"color":"dark_red"},{"text":"，有点黑哟！","color":"white"}]
execute if score $random mem matches 1 run tellraw @a [{"text":">> ","color":"green","bold":true},{"selector":"@s","color":"gold","bold":false},{"text":"扔了个二十面幸运骰，掷出了D20=","color":"white","bold":false},{"score": {"name": "$random","objective": "mem"},"color":"dark_purple"},{"text":"，大失败！","color":"white"}]