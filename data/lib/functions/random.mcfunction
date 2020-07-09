# 输入：$random_min 最小值，$random_max 最大值
# 输出：$random 结果

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random"],Duration:1}
execute store result score $random mem run data get entity @e[tag=random,limit=1] UUID[0]
kill @e[tag=random]
scoreboard players operation $random_max mem -= $random_min mem
scoreboard players add $random_max mem 1
scoreboard players operation $random mem %= $random_max mem
scoreboard players operation $random mem += $random_min mem

# TODO : 重置血量上限