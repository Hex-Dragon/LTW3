# as rule marker
# with rgb_op

execute as @a[tag=rgb_op] run function mini:main/player_finished

scoreboard players reset @a[tag=rgb_op] rgb_R
scoreboard players reset @a[tag=rgb_op] rgb_G
scoreboard players reset @a[tag=rgb_op] rgb_B