schedule clear d4:mg26/delay
schedule clear d4:mg26/quiz1
schedule clear d4:mg26/quiz2
schedule clear d4:mg26/quiz3
schedule clear d4:mg26/achieve
execute in sister_dimension run fill 29 1 -385 13 1 -369 white_concrete keep
execute in overworld run setblock -354 2 -44 air
effect clear @a[scores={mg26=1..}]
effect give @a[scores={mg26=1..}] saturation 1 255 true
effect give @a[scores={mg26=1..}] regeneration 8 255 true
effect give @a[scores={mg26=1..}] weakness 100000 255 true
scoreboard players reset * mg26.1
scoreboard players reset * mg26.2
scoreboard players reset * mg26.3
gamemode adventure @a[scores={mg26=1..}]
tag @a remove mg26_win1
tag @a remove mg26_win2
tag @a remove mg26_win3
tag @a remove TCplayers
execute in overworld run spawnpoint @a[scores={mg26=1..}] -163 4 -93
execute in sister_dimension run kill @e[type=!player,x=12,y=2,z=-386,dx=18,dy=18,dz=18]
execute in sister_dimension unless entity @e[tag=mg26,tag=chest] run summon marker 21 3.875 -377 {Tags:[mg26,chest]}
execute in sister_dimension run setblock 21 2 -377 chest[facing=west]
execute in overworld run tp @a[scores={mg26=1..}] -163 4 -93
tag @a remove SPmg26
scoreboard players reset * mg26
forceload remove 26 -376 15 -385
bossbar remove tc_progress

execute in overworld run data merge block -163 5 -89 {Text3:'{"text":""}'}