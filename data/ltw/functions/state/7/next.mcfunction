# 选取下一轮选择的人群

tag @a remove new_selector

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank1] add new_selector
execute if entity @a[tag=mini_rank1] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},"轮到第一名 ",{"selector": "@a[tag=new_selector]","color":"gold"}," 选择奖励了!"]

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank2] add new_selector
execute unless entity @a[tag=mini_rank1] if entity @a[tag=mini_rank2] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},"轮到第二名 ",{"selector": "@a[tag=new_selector]","color":"gold"}," 选择奖励了!"]

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank3] add new_selector
execute unless entity @a[tag=mini_rank1] unless entity @a[tag=mini_rank2] if entity @a[tag=mini_rank3] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},"轮到第三名 ",{"selector": "@a[tag=new_selector]","color":"gold"}," 选择奖励了!"]

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank4] add new_selector
execute unless entity @a[tag=mini_rank1] unless entity @a[tag=mini_rank2] unless entity @a[tag=mini_rank3] if entity @a[tag=mini_rank4] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},{"text":"轮到其他人选择奖励了!","color":"gold"}]

# 以玩家为对象开始执行
execute as @a[tag=new_selector] run function ltw:state/7/next2
execute unless entity @a[tag=new_selector] if score $game_type mem matches 1 if score $round mem matches ..5 run function ltw:state/7/continue_gameparty
execute unless entity @a[tag=new_selector] if score $game_type mem matches 1 if score $round mem matches 6.. run function ltw:main/game_end

# 初始化倒计时
scoreboard players set $countdown mem 10

# 播放音效
execute as @a[tag=new_selector] at @s run function lib:sounds/hit
execute if entity @a[tag=new_selector] as @a[tag=!new_selector] at @s run function lib:sounds/hit2
