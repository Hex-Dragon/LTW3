
# 更新铁锭数量
execute as @a[team=playing] store result score @s iron_count run clear @s iron_ingot 0
execute as @a[team=playing] run scoreboard players operation @s iron_disp = @s iron_count
execute if score $countdown mem matches ..90 run effect give @a[team=playing,tag=!invisible] glowing 1000000 0 true
execute if score $countdown mem matches ..90 run effect clear @a[team=playing,tag=invisible] glowing

# 铁锭发光
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}}] run data modify entity @s Glowing set value 1b
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron"}}] run data modify entity @s Glowing set value 1b
