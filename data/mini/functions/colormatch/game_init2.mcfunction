# 替换墙壁
function mini:colormatch/game/replace_wall
# 复制地板
execute positioned 1001 10 4000 run clone ~ ~ ~ ~20 ~ ~20 1050 16 4000 filtered #mini:colormatch_floor

# 清理残余实体
function mini:main/kill_entity
