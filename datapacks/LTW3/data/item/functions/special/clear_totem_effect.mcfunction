# 重置 buff
effect clear @a[tag=have_totem] absorption
execute as @a[tag=have_totem] at @s run function mini:main/give_effect

# 重置 tag
tag @a[tag=have_totem] remove have_totem