# 调整物品：仅在纵向速度 < -0.03 且 y > 21 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=1000,y=21,z=6000,dx=100,dy=100,dz=100,scores={temp=-30..}] run data merge entity @s {NoGravity:0b}
execute as @e[tag=bonus_item] unless entity @s[x=1000,y=21,z=6000,dx=100,dy=100,dz=100,scores={temp=-30..}] run data merge entity @s {NoGravity:1b}

# 奖励幻翼特效
execute as @e[tag=bonus_phantom] at @s run particle dust 1 0 0 2 ~ ~ ~ 0.2 0 0.2 0 1 normal

# 替换幻翼掉落物
execute as @e[type=item,nbt={Item:{id:"minecraft:egg"}}] at @s run function mini:phantom/game/new_item
kill @e[type=experience_orb]