# 旁观者限制
function mini:main/watcher_limit

# 渐渐变暗
execute as @a[tag=!debug] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 run particle dust 0 0 0 1000 ~ ~ ~ 1 1 1 0 15 force @s
execute as @a[tag=!debug] at @s positioned ~ ~0.5 ~ positioned ^ ^ ^1 run particle dust 0 0 0 1000 ~ ~ ~ 1 1 1 0 15 force @s