# 判断空交易
execute if entity @s[nbt={Offers:{Recipes:[{uses:1,maxUses:1}]}}] run function mini:trade/game/remove_trade

# 判断村民是否升级
function mini:trade/game/villager_level_up

# 处理提示
execute as @a[team=playing] if score @s player_id = @e[type=villager,tag=upgradeVillager,limit=1] player_id run function mini:trade/game/announce_upgrade

# 判断是否增加交易
execute if entity @s[tag=upgradeVillager] run function mini:trade/game/villager_new_trade

