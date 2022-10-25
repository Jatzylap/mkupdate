clear @a[scores={mg24=1..}]
effect clear @a[scores={mg24=1..}]
schedule clear d2:mg24/repair_pink
schedule clear d2:mg24/repair_green
effect give @a[scores={mg24=1..}] saturation 1 255 true
effect give @a[scores={mg24=1..}] regeneration 8 255 true
effect give @a[scores={mg24=1..}] weakness 100000 255 true
fill 925 3 57 925 7 63 lime_stained_glass
fill 798 3 63 798 7 57 magenta_stained_glass
fill 792 3 61 790 3 59 polished_blackstone_pressure_plate
fill 933 3 59 931 3 61 polished_blackstone_pressure_plate
scoreboard players reset * mg24.1
scoreboard players reset * mg24.2
scoreboard players reset * mg24.3
scoreboard players reset * mg24.4
scoreboard players reset * mg24.5
scoreboard players reset * mg24.6
scoreboard players reset * mg24.7
scoreboard players reset * mg24.8
gamemode adventure @a[scores={mg24=1..}]
tag @a remove mg24_win
tag @a remove MMplayers
spawnpoint @a[scores={mg24=1..}] -90 3 -97
kill @e[type=!player,tag=!st0rage,x=784,y=2,z=-3,dx=155,dy=30,dz=127]
setblock -351 2 -42 air
bossbar remove mm_pink_gen
bossbar remove mm_green_gen
forceload remove 791 60
forceload remove 932 60
tp @a[scores={mg24=1..}] -90 3 -97
execute as @a[scores={mg24=1..}] at @s run function mk:restore
tag @a remove SPmg24
team remove mg24-pink
team remove mg24-green
stopsound @s * ambient.nether_wastes.loop
stopsound @s * ambient.nether_wastes.mood
stopsound @s * ambient.nether_wastes.additions
execute if entity @a[tag=PG,scores={mg24=1..}] run function library:event/schedule/next
scoreboard players reset * mg24

data merge block -163 5 -89 {Text3:'{"text":""}'}