function item:bonus_item/gameparty/auto/low
execute as @e[tag=bonus_item,limit=1,sort=nearest] run data merge entity @s {NoGravity:0b,Motion:[0.0,0.6,0.0]}
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
kill @s
tellraw @a ["\n",{"text": ">> ","color":"gold","bold": true},{"text": "红色幻翼已被击杀！\n","color":"gold"}]