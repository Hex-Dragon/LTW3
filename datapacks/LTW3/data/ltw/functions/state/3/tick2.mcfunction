# 固定旁观
gamemode spectator @a[team=!debugging]
execute as @a[team=!debugging] run spectate
tp @a[team=!debugging] -22.5 6.5 -9.0 180.0 0.0

# 清理残留实体
function mini:main/kill_remaining_entity