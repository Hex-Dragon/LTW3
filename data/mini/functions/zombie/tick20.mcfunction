# 随机召唤僵尸
effect clear @a hunger

# 生成随机数
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 100
function lib:random

# 清理恼鬼
execute if score $random mem matches 40.. run tp @e[type=vex,limit=1,sort=random] ~ -100 ~

# 赋予随机效果
effect give @e[type=!player,type=!piglin,limit=1,sort=random] speed 1 1
effect give @e[type=!player,type=!piglin,limit=1,sort=random] speed 4
effect give @e[type=piglin,limit=1,sort=random] slowness 3 0
effect give @e[type=piglin,limit=1,sort=random] slowness 3 1

# 召唤怪物
execute if score $countdown mem matches 61..120 if score $random mem matches 0..10 run function mini:zombie/game/summon_piglin
execute if score $countdown mem matches 1..90 if score $random mem matches 11..20 run function mini:zombie/game/summon_skeleton
execute if score $countdown mem matches ..60 if score $random mem matches 21..30 run function mini:zombie/game/summon_creeper
execute if score $countdown mem matches ..0 if score $random mem matches 31..40 run function mini:zombie/game/summon_evoker

# 显示提示
execute if score $countdown mem matches 90 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "骷髅 ","color":"red"},"已开始出现!"]
execute if score $countdown mem matches 60 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "苦力怕 ","color":"red"},"已开始出现!"]
execute if score $countdown mem matches 1 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "唤魔者 ","color":"red"},"已开始出现!"]
