# 玩家获得土豆时执行
tag @s add pm_holding

function lib:sounds/hit2
effect give @s glowing 1000000 0 true
effect clear @s speed
effect give @s speed 1000000 2 true

replaceitem entity @s armor.head tnt{Enchantments:[{id:"binding_curse",lvl:1}],display:{Name:'{"text":"真•TNT","italic":false,"color":"red"}'}}