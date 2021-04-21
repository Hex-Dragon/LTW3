
# 更新钻石数量
execute as @a[team=playing] store result score @s diamond run clear @s diamond 0
execute if score $countdown mem matches ..60 run effect give @a[team=playing] glowing 1000000 0 true
# effect give @a[scores={diamond=1..}] glowing 5 0 true

# 显示提示
execute as @a[scores={diamond=1..},tag=!diamond_got,x=1000,y=0,z=5000,dx=32,dy=253,dz=32] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s"},{"text":" 获得了闪闪发光的钻石","color":"aqua"}]
execute as @a[scores={diamond=1..},tag=!diamond_got,x=1000,y=0,z=5000,dx=32,dy=253,dz=32] as @a run function lib:sounds/hit
tag @a remove diamond_got
tag @a[scores={diamond=1..}] add diamond_got

# 钻石发光
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}}] run data modify entity @s Glowing set value 1b
