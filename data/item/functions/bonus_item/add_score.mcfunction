#as player
execute store result score #bonus_add_score mem run data get block 0 0 0 RecordItem.tag.bonus_add_score
scoreboard players operation @s total_score += #bonus_add_score mem
scoreboard players operation @s total_score_disp += #bonus_add_score mem