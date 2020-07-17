# 小游戏阶段受伤判定
execute if score $state mem matches 5 run function mini:main/damage_taken

# 移除受到伤害advancement
advancement revoke @s only lib:damage_taken