execute as @a[tag=mini_running] store result score @s UUID run data get entity @s UUID[0]
execute as @a[tag=mini_running] if score @s UUID = $slime_last_hit mem run say 我打到人要加分!