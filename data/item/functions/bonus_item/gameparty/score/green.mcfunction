# 生成绿色品质的物品实体

loot spawn 0 0 0 loot item:gameparty/score/green
execute as @e[type=item,x=0,y=0,z=0,dx=0,dy=0,dz=0,limit=1] positioned ~ ~ ~ run function item:bonus_item/gameparty/wrap/green
