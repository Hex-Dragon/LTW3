# 刷新单个玩家购买的物品

clear @s bow
give @s[scores={shop_bow=1}] bow{display:{Name:'{"text":"弓","italic":false,"color":"gray"}'},Damage:381}

clear @s wooden_shovel
clear @s stone_shovel
clear @s iron_shovel
clear @s diamond_shovel
give @s[scores={shop_weapon=1}] wooden_shovel{display:{Name:'{"text":"木锹","italic":false,"color":"gray"}'}}
give @s[scores={shop_weapon=2}] stone_shovel{display:{Name:'{"text":"石锹","italic":false,"color":"gray"}'}}
give @s[scores={shop_weapon=3}] iron_shovel{display:{Name:'{"text":"铁锹","italic":false,"color":"gray"}'}}
give @s[scores={shop_weapon=4}] diamond_shovel{display:{Name:'{"text":"钻石锹","italic":false,"color":"gray"}'}}

clear @s splash_potion
give @s[scores={shop_potion_spd=1}] splash_potion{CustomPotionEffects:[{Id:1,Amplifier:0,Duration:300}],CustomPotionColor:8039610,display:{Name:'{"text":"喷溅型迅捷药水","italic":false,"color":"gray"}'}}
give @s[scores={shop_potion_spd=2}] splash_potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:300}],CustomPotionColor:8039610,display:{Name:'{"text":"喷溅型迅捷药水","italic":false,"color":"gray"}'}}
give @s[scores={shop_potion_rst=1}] splash_potion{CustomPotionEffects:[{Id:11,Amplifier:0,Duration:400}],CustomPotionColor:9913400,display:{Name:'{"text":"喷溅型抵抗药水","italic":false,"color":"gray"}'}}

clear @s golden_apple
clear @s enchanted_golden_apple
give @s[scores={shop_apple=1}] golden_apple{display:{Lore:['{"text":"恢复 4 颗心或生命 +1","italic":false,"color":"gray"}'],Name:'{"text":"生命果","italic":false,"color":"green"}'}}
give @s[scores={shop_apple=2}] enchanted_golden_apple{display:{Name:'{"text":"附魔生命果","italic":false}',Lore:['{"text":"恢复到满血或生命加倍","italic":false,"color":"gray"}']}}
scoreboard players reset @s shop_apple

clear @s arrow
give @s[scores={shop_arrow=1}] arrow
give @s[scores={shop_arrow=2}] arrow 2
give @s[scores={shop_arrow=3}] tipped_arrow{Potion:"minecraft:slowness"} 2

replaceitem entity @s armor.head air
replaceitem entity @s[scores={shop_armor=2}] armor.head golden_helmet{display:{Name:'{"text":"金头盔","italic":false,"color":"gray"}'}}
replaceitem entity @s armor.chest air
replaceitem entity @s[scores={shop_armor=4}] armor.chest golden_chestplate{display:{Name:'{"text":"金胸甲","italic":false,"color":"gray"}'}}
replaceitem entity @s armor.legs air
replaceitem entity @s[scores={shop_armor=3}] armor.legs golden_leggings{display:{Name:'{"text":"金护腿","italic":false,"color":"gray"}'}}
replaceitem entity @s armor.feet air
replaceitem entity @s[scores={shop_armor=1}] armor.legs golden_boots{display:{Name:'{"text":"金靴子","italic":false,"color":"gray"}'}}
