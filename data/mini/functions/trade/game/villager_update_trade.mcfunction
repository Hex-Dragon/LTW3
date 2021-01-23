# 判断村民是否升级
function mini:trade/game/villager_level_up

# 判断空交易
function mini:trade/game/remove_trade

# 判断是否增加交易
execute if entity @s[tag=upgradeVillager] run function mini:trade/game/villager_new_trade

