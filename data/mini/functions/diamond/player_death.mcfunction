
# 执行重生方法
function mini:diamond/game/respawn1

# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s blindness 3 5 true
