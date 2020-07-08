#玩家失败
function mini:hotpm/pm_lost
function mini:hotpm/player_failed

#选新土豆
execute if score $t_alive mem matches 2.. run function mini:hotpm/pm_init