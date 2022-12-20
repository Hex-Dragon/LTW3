
# 清理残余实体
function mini:main/kill_entity
kill @e[tag=tntrun_block]

# 生成奖励
execute positioned 1019.5 19.2 2020.5 run function item:bonus_item/gameparty/auto/white
