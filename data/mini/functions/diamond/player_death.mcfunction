

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s haste 1000000 1 true
gamerule naturalRegeneration false

# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s slowness 3 3 true
effect give @s blindness 3 0 true

# 传送玩家
spreadplayers 1010 5010 6 8 under 245 false @s[team=playing,tag=!rejoining]
