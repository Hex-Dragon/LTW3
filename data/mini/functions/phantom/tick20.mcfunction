# 给予进度
execute as @a[team=playing,scores={temp=1..,kill_phantom=8}] run advancement grant @s only ltw:blood/phantom1
execute as @a[team=playing,scores={temp=1..,kill_phantom=16}] run advancement grant @s only ltw:blood/phantom2
execute as @a[team=playing,scores={temp=1..,kill_phantom=24}] run advancement grant @s only ltw:blood/phantom3
execute as @a[team=playing,scores={temp=1..,kill_phantom=32}] run advancement grant @s only ltw:blood/phantom4

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0
# 当前场地上没有奖励幻翼
execute if entity @e[tag=bonus_phantom] run scoreboard players set #new_item mem 1
# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 20s 冷却时间
execute if score $new_item_cd mem matches ..19 run scoreboard players set #new_item mem 1

# 召唤幻翼
execute if score $countdown mem matches 11.. run function mini:phantom/game/try_summon

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end
