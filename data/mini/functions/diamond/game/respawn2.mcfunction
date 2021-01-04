tp @a[tag=respawning] ~ 265 ~
execute as @e[type=item,tag=death_drop] run function item:disable_throw
tag @e[type=item,tag=death_drop] remove death_drop
tag @a remove respawning