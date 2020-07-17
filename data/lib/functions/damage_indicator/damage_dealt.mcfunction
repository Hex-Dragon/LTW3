# 小游戏阶段造成伤害判定
execute if score $state mem matches 5 run function mini:main/damage_taken

# 移除造成伤害advancement
advancement revoke @s only lib:damage_dealt