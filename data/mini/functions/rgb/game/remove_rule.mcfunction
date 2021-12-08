# as rule marker

tellraw @a[tag=mini_running] [{"text": ">> ","bold": true,"color": "light_purple"}, {"text": "一条规则被销毁：","bold": false},{"nbt":"data.name","entity": "@s","bold": false,"interpret": true}]
execute as @a[tag=mini_running] at @s facing entity @e[tag=rgb_new_rule,limit=1] eyes positioned ^ ^ ^5 run playsound minecraft:entity.armor_stand.break player @s ~ ~ ~

kill @s