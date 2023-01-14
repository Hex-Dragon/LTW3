
execute as @e[tag=new_phantom] at @s run tp @s ~ 33 ~

# 设置攻击力与随机生命值
attribute @e[tag=new_phantom,limit=1] generic.attack_damage base set 4
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 2
function lib:random
execute if score $random mem matches 1 run attribute @e[tag=new_phantom,limit=1] generic.max_health base set 2
execute if score $random mem matches 2 run attribute @e[tag=new_phantom,limit=1] generic.max_health base set 5

# 如果满足条件（在 tick20 中检查），则刷出奖励幻翼
execute if score #new_item mem matches 0 run tellraw @a ["\n",{"text": ">> ","color":"red","bold": true},{"text": "击杀红色幻翼, 获取奖励物资！\n","color":"red"}]
execute if score #new_item mem matches 0 run title @a times 1 80 3
execute if score #new_item mem matches 0 run title @a title ""
execute if score #new_item mem matches 0 run playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2
execute if score #new_item mem matches 0 run tag @e[tag=new_phantom] add bonus_phantom
execute if score #new_item mem matches 0 run scoreboard players set $new_item_cd mem 0

# 修改奖励幻翼的属性
team join red @e[tag=bonus_phantom,tag=new_phantom,limit=1]
effect give @e[tag=bonus_phantom,tag=new_phantom,limit=1] glowing 1000000 0 true
data merge entity @e[tag=bonus_phantom,tag=new_phantom,limit=1] {Size:7,DeathLootTable:"mini:phantom"}
attribute @e[tag=bonus_phantom,tag=new_phantom,limit=1] generic.attack_damage base set 8
attribute @e[tag=bonus_phantom,tag=new_phantom,limit=1] generic.max_health base set 20

# 确认属性修改
effect give @e[tag=new_phantom] instant_damage 1 10 true

tag @e[tag=new_phantom] remove new_phantom