
# 给予状态效果
function mini:trade/give_effect
effect give @s slow_falling 4
effect give @s weakness 5 10 true
effect give @s resistance 5 10 true

# 传送玩家
tp @s[team=playing] 1016 344 5016
tp @s[team=watching] 1016 319 5016
