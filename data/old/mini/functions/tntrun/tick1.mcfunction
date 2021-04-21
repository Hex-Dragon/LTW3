# 检测应该消失的方块
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ run function mini:tntrun/game/check_floor