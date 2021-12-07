# 生成绿色品质的物品实体

loot spawn ~ ~ ~ loot item:gameparty/score/green
execute align xyz as @e[type=item,dx=0,dy=0,dz=0,limit=1] run function item:bonus_item/gameparty/set_data/green
