execute unless score @s 6 matches 0.. run scoreboard players set @s 6 0
setblock -296 1 15 air destroy
setblock -298 2 12 air destroy
tag @s[scores={6=1..}] remove 4xp
execute if entity @s[scores={6=1..}] run tag @e[name="M@K"] remove 4p
tag @e[name="M@K"] add 4p
tag @s add 4xp
scoreboard players reset @s[scores={6=1..}] 6