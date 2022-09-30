#particle dust 1 1 1 0.4 ~ ~ ~ 0 0 0 0 1 normal @s

execute if entity @s[team=mg25-white] if block ~ ~ ~ #raycast-travel unless entity @e[distance=..1,type=shulker,team=mg25-white,tag=mg25] if entity @s[distance=..90] positioned ^ ^ ^1 run function c4:mg25/ray
execute if entity @s[team=mg25-white] positioned ^ ^ ^1 as @e[type=shulker,team=mg25-white,tag=mg25,distance=..1,limit=1,sort=nearest] run function c4:mg25/move
execute if entity @s[team=mg25-black] if block ~ ~ ~ #raycast-travel unless entity @e[distance=..1,type=shulker,team=mg25-black,tag=mg25] if entity @s[distance=..90] positioned ^ ^ ^1 run function c4:mg25/ray
execute if entity @s[team=mg25-black] positioned ^ ^ ^1 as @e[type=shulker,team=mg25-black,tag=mg25,distance=..1,limit=1,sort=nearest] run function c4:mg25/move