
# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s haste 1000000 1 true
effect give @s levitation 6 253
effect give @s weakness 7 10 true
effect give @s resistance 7 10 true
gamerule naturalRegeneration false

# 传送玩家
spreadplayers 1016 5016 6 8 under 255 false @s[team=playing,tag=!rejoining]
tag @s add respawning
schedule function mini:diamond/game/respawn2 1t append