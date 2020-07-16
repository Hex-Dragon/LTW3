# 玩家获胜判断
execute as @a[tag=mini_running,x=1005,y=11,z=1018,dx=2,dy=3,dz=2] run function mini:parkour/player_finished

# 掉落方块保持
execute as @e[type=falling_block,tag=parkour_block] run data modify entity @s Time set value 1

# 音效
playsound block.note_block.snare block @a 1005 15 1051 0.8 2
playsound block.note_block.snare block @a 1008 10 1033 0.8 2