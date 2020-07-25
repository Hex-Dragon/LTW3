# 显示bossbar
execute if score $bossbar_type mem matches 0 as @a run function lib:bossbar/show_none
bossbar set mini:red players @a[scores={bossbar_color=1}]
bossbar set mini:yellow players @a[scores={bossbar_color=2}]
bossbar set mini:green players @a[scores={bossbar_color=3}]
bossbar set mini:blue players @a[scores={bossbar_color=4}]