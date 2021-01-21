
# 更新钻石数量
execute as @a[team=playing] store result score @s emerald run clear @s emerald 0
execute if score $countdown mem matches ..60 run effect give @a[team=playing] glowing 1000000 0 true
# effect give @a[scores={emerald=1..}] glowing 5 0 true

# 显示提示
execute as @a[scores={emerald=1..},tag=!emerald_got,x=1000,y=0,z=5000,dx=32,dy=253,dz=32] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s"},{"text":" 获得了闪闪发光的绿宝石","color":"aqua"}]
execute as @a[scores={emerald=1..},tag=!emerald_got,x=1000,y=0,z=5000,dx=32,dy=253,dz=32] as @a run function lib:sounds/hit
tag @a remove emerald_got
tag @a[scores={emerald=1..}] add emerald_got

# 钻石发光
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald"}}] run data modify entity @s Glowing set value 1b
