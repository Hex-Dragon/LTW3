
# 更新钻石数量
execute as @a[team=playing] store result score @s diamond run clear @s diamond 0
execute if score $countdown mem matches ..40 run effect give @a glowing 1000000 0 true
# effect give @a[scores={diamond=1..}] glowing 5 0 true

# 显示提示
execute as @a[scores={diamond=1..},tag=!diamond_got,x=1000,y=0,z=1000,dx=32,dy=252,dz=32] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s"},{"text":" 获得了闪闪发光的钻石!","color":"aqua"}]
execute as @a[scores={diamond=1..},tag=!diamond_got,x=1000,y=0,z=1000,dx=32,dy=252,dz=32] as @a[distance=1..] run function lib:sounds/hit
tag @a remove diamond_got
tag @a[scores={diamond=1..}] add diamond_got
