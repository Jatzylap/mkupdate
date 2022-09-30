clear @a[scores={mg23=1..}]
effect clear @a[scores={mg23=1..}]
effect give @a[scores={mg23=1..}] saturation 1 255 true
effect give @a[scores={mg23=1..}] regeneration 8 255 true
effect give @a[scores={mg23=1..}] weakness 100000 255 true
scoreboard players reset * mg23.1
scoreboard players reset * mg23.2
scoreboard players reset * mg23.3
scoreboard players reset * mg23.4
scoreboard players reset * mg23.5
scoreboard players reset * mg23.6
scoreboard players reset * mg23.7
scoreboard players reset * mg23.8
gamemode adventure @a[scores={mg23=1..}]
tag @a remove CTFprisoners
tag @e remove mg23_b1
tag @e remove mg23_b2
tag @a remove mg23_win
tag @a remove mg23_nowin
tag @a remove CTFplayers
execute in overworld run spawnpoint @a[scores={mg23=1..}] -18 4 -13
execute in sister_dimension run kill @e[type=!player,x=-133,y=-3,z=-227,dx=280,dy=68,dz=340]
execute in overworld run setblock -351 2 -39 air
bossbar remove ctf_countdown
execute in sister_dimension run setblock 89 25 -17 red_wool
execute in sister_dimension run setblock -75 25 -122 blue_wool
execute in sister_dimension run forceload remove 39 -165 38 -177
execute in sister_dimension run forceload remove -18 52 -14 66
execute in overworld run tp @a[scores={mg23=1..}] -18 4 -13
execute as @a[scores={mg23=1..}] at @s run function mk:restore
tag @a remove SPmg23
tag @e[tag=mg23_start] remove mg23_start
team remove mg23-red
team remove mg23-blue
execute if entity @a[tag=PG,scores={mg23=1..}] run function library:event/schedule/next
scoreboard players reset * mg23

data merge block -14 5 -13 {Text3:'{"text":""}'}