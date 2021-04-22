execute store result storage lib:random_array cache int 1 run scoreboard players get @s mem
data modify storage lib:random_array out append from storage lib:random_array cache
kill @s