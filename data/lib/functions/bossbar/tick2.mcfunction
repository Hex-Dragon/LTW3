# mem的$bossbar_type: 0关闭 1countdown_fast 2count_down
# 玩家的bossbar_color: 1红 2黄 3绿 4蓝
execute if score $bossbar_type mem matches 1 run function lib:bossbar/set_countfast
execute if score $bossbar_type mem matches 2 run function lib:bossbar/set_countdown

# 显示bossbar
execute unless score $bossbar_type mem matches 0 as @a run function lib:bossbar/show_none
execute if score $bossbar_type mem matches 0 as @a run function lib:bossbar/show_none
