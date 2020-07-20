# 刷新单个玩家购买的物品

clear @s arrow
give @s[scores={shop_arrow=1}] arrow 2
give @s[scores={shop_arrow=2}] tipped_arrow{Potion:"minecraft:slowness"} 3

clear @s wooden_hoe
clear @s stone_hoe
give @s[scores={shop_weapon=1}] wooden_hoe
give @s[scores={shop_weapon=2}] stone_hoe

clear @s potion
give @s[scores={shop_potion=1}] potion

clear @s golden_apple
give @s[scores={shop_potion=1}] golden_apple

replaceitem entity @s armor.head air
replaceitem entity @s[scores={shop_armor=1}] armor.head leather_helmet
replaceitem entity @s armor.chest air
replaceitem entity @s[scores={shop_armor=3}] armor.chest leather_chestplate
replaceitem entity @s armor.legs air
replaceitem entity @s[scores={shop_armor=2}] armor.legs leather_leggings

# FIXME : 幻翼击杀数有旁观显示