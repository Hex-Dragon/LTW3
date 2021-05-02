clear @s
kill @e[type=item,nbt={Item:{tag:{lobby_item:1b}}}]

# 选择物品
item entity @s[team=hub_play] hotbar.0 replace lime_wool{lobby_item:1b,display:{Name:'[{"text":"","color":"green","italic":false},"准备模式 (按 ",{"keybind":"key.drop"}," 以旁观)"]',Lore:['[{"text":"","color":"gray","italic":false},"你将在下一局参与游戏"]']}}
item entity @s[team=hub_watch] hotbar.0 replace light_gray_wool{lobby_item:1b,display:{Name:'[{"text":"","color":"white","italic":false},"旁观模式 (按 ",{"keybind":"key.drop"}," 以准备)"]',Lore:['[{"text":"","color":"gray","italic":false},"你将在下一局旁观游戏"]']}}
