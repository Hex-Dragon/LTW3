
# 每 0.1s 进行即时刷新
execute if score $bossbar_type mem matches 0 run function lib:bossbar/set_none
execute if score $bossbar_type mem matches 1 run function lib:bossbar/set_fast
execute if score $bossbar_type mem matches 2 run function lib:bossbar/set_slow2
