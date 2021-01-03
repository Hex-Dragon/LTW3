
# 更新钻石数量
execute as @a[team=playing] store result score @s diamond run clear @s diamond 0
effect give @a[scores={diamond=1..}] glowing 2 0 true

# 显示提示
execute as @a[scores={diamond=1..},tag=!diamond_got] run tellraw @a ["",{"text": ">> ","color":"blue","bold": true},{"selector": "@s","color":"blue"}," 获得了闪闪发光的钻石!"]
execute as @a[scores={diamond=1..},tag=!diamond_got] as @a[distance=1..] run function lib:sounds/hit
tag @a[scores={diamond=1..},tag=!diamond_got] add diamond_got
