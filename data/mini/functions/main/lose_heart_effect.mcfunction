execute as @a[tag=have_totem] run function mini:main/give_effect
execute as @a[tag=have_totem] run effect give @s instant_health 1 5 true

tag @a[tag=have_totem] remove have_totem