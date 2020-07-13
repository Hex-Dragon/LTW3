# 随机召唤僵尸
effect clear @a hunger

# 生成随机数
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 100
function lib:random
scoreboard players operation $random mem += $zombie_luck mem
execute if score $random mem matches 75.. run scoreboard players remove $zombie_luck mem 1

# 清理恼鬼
execute if score $random mem matches 50.. run tp @e[type=vex,limit=1,sort=random] ~ -100 ~

# 赋予随机效果
effect give @e[type=husk,limit=1,sort=random] speed 1 1
effect give @e[type=husk,limit=1,sort=random] speed 4
effect give @e[type=zombie,limit=2,sort=random] slowness 4 2
effect give @e[type=zombie,limit=1,sort=random] slowness 2 3

# 召唤怪物
execute if score $random mem matches -5..5 run function mini:zombie/game/summon_zombie
execute if score $random mem matches ..-10 run function mini:zombie/game/summon_evoker
