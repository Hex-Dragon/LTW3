
execute store result bossbar mini:red max run scoreboard players get $countdown_max mem
execute store result bossbar mini:yellow max run scoreboard players get $countdown_max mem
execute store result bossbar mini:green max run scoreboard players get $countdown_max mem
execute store result bossbar mini:blue max run scoreboard players get $countdown_max mem

execute if score $bossbar_color mem matches 0 run bossbar set mini:red players @a[scores={bossbar_color=1}]
execute if score $bossbar_color mem matches 0 run bossbar set mini:yellow players @a[scores={bossbar_color=2}]
execute if score $bossbar_color mem matches 0 run bossbar set mini:green players @a[scores={bossbar_color=3}]
execute if score $bossbar_color mem matches 0 run bossbar set mini:blue players @a[scores={bossbar_color=4}]
execute if score $bossbar_color mem matches 1 run bossbar set mini:red players @a
execute if score $bossbar_color mem matches 2 run bossbar set mini:yellow players @a
execute if score $bossbar_color mem matches 3 run bossbar set mini:green players @a
execute if score $bossbar_color mem matches 4 run bossbar set mini:blue players @a
