execute as @a[tag=mini_running] store result score @s UUID run data get entity @s UUID[0]
tag @s add self_hurt
execute as @a[tag=mini_running,tag=!self_hurt] if score @s UUID = $slime_last_hit mem run say 我打到人要加分!
tag @s remove self_hurt