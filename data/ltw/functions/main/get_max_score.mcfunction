execute if score @s total_score > #score_max mem run scoreboard players operation #score_max mem = @s total_score

scoreboard players set #score_max mem -2147483648
scoreboard players operation #score_max mem > @a[tag=!max_uncounted] total_score