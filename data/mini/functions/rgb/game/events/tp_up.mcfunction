# as rgb_op at @s
# input: score #rgb_tp rgb_sys

tp @s ~ ~1 ~
scoreboard players remove #rgb_tp rgb_sys 1
execute if score #rgb_tp rgb_sys matches 1.. positioned ~ ~1 ~ run function mini:rgb/game/events/tp_up