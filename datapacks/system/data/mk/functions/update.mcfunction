tag @s remove 4
tag @s remove 5
tag @s remove 6
tag @s remove 7
tag @s remove 8

execute if entity @e[limit=1,name="M@K",scores={m=1..}] run tp @s -113 9.5 27
execute if block -113 9 9 beacon{Levels:1} run scoreboard players set @a 3.1 1
execute if block -113 9 9 beacon{Levels:1} run setblock -113 8 9 air