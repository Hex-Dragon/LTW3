say 4
# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration false

# 复活特效
effect give @s slowness 3 3 true
effect give @s blindness 3 0 true

# 传送玩家
spreadplayers 1010 5010 6 9 under 245 false @s[team=playing,tag=!rejoining]
