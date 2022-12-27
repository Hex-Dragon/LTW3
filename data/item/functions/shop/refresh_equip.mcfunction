# 刷新单个玩家购买的物品

# 01
clear @s bow
give @s[scores={shop_01_bow=1}] bow{display:{Name:'{"text":"单发弓","italic":false,"color":"gray"}'},Damage:384}
give @s[scores={shop_01_bow=2}] bow{display:{Name:'{"text":"弓","italic":false,"color":"gray"}'},Damage:346}
give @s[scores={shop_01_bow=3}] bow{display:{Name:'{"text":"<冲击 I> 弓","italic":false,"color":"white"}'},Damage:346,Enchantments:[{id:"minecraft:punch",lvl:1s}]}

# 02
clear @s arrow
clear @s tipped_arrow
give @s[scores={shop_02_arrow=1}] arrow
give @s[scores={shop_02_arrow=2}] arrow 2
give @s[scores={shop_02_arrow=3}] tipped_arrow{Potion:"minecraft:slowness"} 2

# 03
clear @s golden_apple
clear @s enchanted_golden_apple
give @s[scores={shop_03_apple=1}] golden_apple{display:{Lore:['{"text":"恢复 4 颗心或生命 +1","italic":false,"color":"gray"}'],Name:'{"text":"生命果","italic":false,"color":"aqua"}'}}
give @s[scores={shop_03_apple=2}] enchanted_golden_apple{display:{Name:'{"text":"附魔生命果","italic":false,"color":"light_purple"}',Lore:['{"text":"恢复到满血或生命加倍","italic":false,"color":"gray"}']}}
scoreboard players reset @s shop_03_apple

# 04
clear @s splash_potion
give @s[scores={shop_04_float=1}] splash_potion{CustomPotionEffects:[{Id:25,Amplifier:1,Duration:50}],CustomPotionColor:8039610,display:{Name:'{"text":"喷溅型浮空药水","italic":false,"color":"gray"}'}}
give @s[scores={shop_04_float=2}] splash_potion{CustomPotionEffects:[{Id:25,Amplifier:1,Duration:70}],CustomPotionColor:8039610,display:{Name:'{"text":"喷溅型浮空药水","italic":false,"color":"white"}'}}

# 05
clear @s wooden_axe
clear @s golden_axe
give @s[scores={shop_05_axe=1}] wooden_axe{display:{Name:'{"text":"木斧","italic":false,"color":"gray"}'},Damage:54}
give @s[scores={shop_05_axe=2}] golden_axe{display:{Name:'{"text":"金斧","italic":false,"color":"gray"}'},Damage:28}
give @s[scores={shop_05_axe=3}] golden_axe{display:{Name:'{"text":"金斧","italic":false,"color":"white"}'},Damage:25}

# 06
item replace entity @s armor.feet with air
item replace entity @s[scores={shop_06_armor=1}] armor.feet with leather_boots{display:{Name:'{"text":"皮革靴子","italic":false,"color":"gray"}'}}
item replace entity @s[scores={shop_06_armor=2}] armor.feet with iron_boots{display:{Name:'{"text":"铁靴子","italic":false,"color":"gray"}'}}
item replace entity @s[scores={shop_06_armor=3}] armor.feet with diamond_boots{display:{Name:'{"text":"钻石靴子","italic":false,"color":"white"}'}}
item replace entity @s[scores={shop_06_armor=4}] armor.feet with netherite_boots{display:{Name:'{"text":"下界合金靴子","italic":false,"color":"aqua"}'}}

# 07
clear @s fishing_rod
give @s[scores={shop_07_fish=1}] fishing_rod{display:{Name:'{"text":"钓鱼竿","italic":false,"color":"gray"}'},Damage:60}
give @s[scores={shop_07_fish=2}] fishing_rod{display:{Name:'{"text":"钓鱼竿","italic":false,"color":"gray"}'},Damage:57}
give @s[scores={shop_07_fish=3}] fishing_rod{display:{Name:'{"text":"<饵钓 II> 钓鱼竿","italic":false,"color":"white"}'},Damage:57,Enchantments:[{id:"minecraft:lure",lvl:2s}]}
give @s[scores={shop_07_fish=4}] fishing_rod{display:{Name:'{"text":"<饵钓 II> 钓鱼竿","italic":false,"color":"white"}'},Damage:51,Enchantments:[{id:"minecraft:lure",lvl:2s}]}