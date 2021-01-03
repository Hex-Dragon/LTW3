# 旁观者限制
function mini:main/watcher_limit

# 渐渐变暗
execute as @a[team=!debugging] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 run particle dust 0 0 0 1000 ~ ~ ~ 1 1 1 0 15 force @s
execute if score $countdown mem matches ..2 as @a[team=!debugging] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 run particle dust 0 0 0 1000 ~ ~ ~ 1 1 1 0 25 force @s