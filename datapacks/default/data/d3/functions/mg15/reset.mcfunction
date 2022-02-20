execute in overworld run tp @a[scores={mg15=1..}] -151 4 -93
tag @a[scores={mg15=1..}] remove mg0+1
execute in void run forceload add 0 0
execute in void run fill 0 108 0 15 134 15 air
execute in void run forceload remove 0 0
scoreboard players reset * mg15