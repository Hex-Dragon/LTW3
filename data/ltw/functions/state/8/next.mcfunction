# 选取下一轮选择的人群

tag @a remove selecting

execute unless entity @a[tag=selecting] run tag @a[tag=mini_rank1] add selecting
execute if entity @a[tag=mini_rank1] run tellraw @a[tag=!selecting] ["",{"text": ">> ","color":"gold","bold": true},"轮到第一名 ",{"selector": "@a[tag=selecting]","color":"gold"}," 选择奖励了!"]

execute unless entity @a[tag=selecting] run tag @a[tag=mini_rank2] add selecting
execute unless entity @a[tag=mini_rank1] if entity @a[tag=mini_rank2] run tellraw @a[tag=!selecting] ["",{"text": ">> ","color":"gold","bold": true},"轮到第二名 ",{"selector": "@a[tag=selecting]","color":"gold"}," 选择奖励了!"]

execute unless entity @a[tag=selecting] run tag @a[tag=mini_rank3] add selecting
execute unless entity @a[tag=mini_rank1] unless entity @a[tag=mini_rank2] if entity @a[tag=mini_rank3] run tellraw @a[tag=!selecting] ["",{"text": ">> ","color":"gold","bold": true},"轮到第三名 ",{"selector": "@a[tag=selecting]","color":"gold"}," 选择奖励了!"]

execute unless entity @a[tag=selecting] run tag @a[tag=mini_rank4] add selecting
execute unless entity @a[tag=mini_rank1] unless entity @a[tag=mini_rank2] unless entity @a[tag=mini_rank3] if entity @a[tag=mini_rank4] run tellraw @a[tag=!selecting] ["",{"text": ">> ","color":"gold","bold": true},"轮到其他人选择奖励了!"]

# 以玩家为对象开始执行
execute as @a[tag=selecting] run function ltw:state/8/next2
execute unless entity @a[tag=selecting] if score $game_type mem matches 1 if score $round mem matches ..5 run function ltw:state/8/continue_gameparty
execute unless entity @a[tag=selecting] if score $game_type mem matches 1 if score $round mem matches 6.. run function ltw:main/game_end

# 初始化倒计时
scoreboard players set $countdown mem 5

# 播放音效
execute as @a[tag=selecting] at @s run function lib:sounds/hit
execute as @a[tag=!selecting] at @s run function lib:sounds/hit2
