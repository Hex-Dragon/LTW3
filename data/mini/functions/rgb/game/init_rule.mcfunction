scoreboard players remove $init_rule_num rgb_sys 1
execute store result score $rule_type rgb_sys run data get storage ltw:mini rgb.init_array[0]
data remove storage ltw:mini rgb.init_array[0]

execute if score $state mem matches 5 positioned 1038 15 8031 run function mini:rgb/game/summon_new_rule

execute if score $state mem matches 5 if score $init_rule_num rgb_sys matches 1.. run schedule function mini:rgb/game/init_rule 3s