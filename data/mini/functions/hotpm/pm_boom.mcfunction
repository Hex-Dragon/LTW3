#玩家失败
function mini:hotpm/pm_lost

#选新土豆
execute if score $t_alive mem matches 3.. run function mini:hotpm/pm_init

#去除tag
function mini:hotpm/player_failed
