scoreboard players operation @s temp = @s total_score_disp

# 四分到 0~15
xp set @s[scores={temp=0..15}] 0 levels
xp set @s[scores={temp=16..31}] 16 levels
xp set @s[scores={temp=32..47}] 32 levels
xp set @s[scores={temp=48..}] 48 levels
scoreboard players operation @s temp %= #16 mem

# 四分到 0~3
xp add @s[scores={temp=4..7}] 4 levels
xp add @s[scores={temp=8..11}] 8 levels
xp add @s[scores={temp=12..}] 12 levels
scoreboard players operation @s temp %= #4 mem

# 最终添加
xp add @s[scores={temp=1}] 1 levels
xp add @s[scores={temp=2}] 2 levels
xp add @s[scores={temp=3}] 3 levels
