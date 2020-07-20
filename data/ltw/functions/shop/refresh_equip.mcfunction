# 刷新单个玩家购买的物品

clear @s arrow
give @s[scores={shop_arrow=1}] arrow 2
give @s[scores={shop_arrow=2}] tipped_arrow{Potion:"minecraft:slowness"} 3

clear @s wooden_hoe
clear @s wooden_axe
give @s[scores={shop_weapon=1}] wooden_hoe{display:{Name:'{"text":"木锹","italic":false,"color":"gray"}'}}
give @s[scores={shop_weapon=2}] wooden_axe{display:{Name:'{"text":"木斧","italic":false,"color":"gray"}'}}

clear @s potion
give @s[scores={shop_potion=1}] potion{CustomPotionEffects:[{Id:1,Amplifier:0,Duration:400}],CustomPotionColor:8039610,display:{Name:'{"text":"喷溅型速度药水","italic":false,"color":"gray"}'}}

clear @s golden_apple
give @s[scores={shop_apple=1}] golden_apple{display:{Lore:['{"text":"恢复 4 颗心或生命 +1","italic":false,"color":"gray"}'],Name:'{"text":"生命果","italic":false,"color":"green"}'}}

replaceitem entity @s armor.head air
replaceitem entity @s[scores={shop_armor=1}] armor.head leather_helmet{display:{Name:'{"text":"皮革帽子","italic":false,"color":"gray"}'}}
replaceitem entity @s armor.chest air
replaceitem entity @s[scores={shop_armor=3}] armor.chest leather_chestplate{display:{Name:'{"text":"皮革外套","italic":false,"color":"gray"}'}}
replaceitem entity @s armor.legs air
replaceitem entity @s[scores={shop_armor=2}] armor.legs leather_leggings{display:{Name:'{"text":"皮革裤子","italic":false,"color":"gray"}'}}

# FIXME : 幻翼击杀数有旁观显示