#Area 0
fill 40 30 -4 -14 30 26 air replace redstone_block
setblock 13 46 -14 command_block[facing=down]{Command:"function c1:mg19/area0"}
setblock 13 48 -14 air
setblock 13 47 -14 shulker_box[facing=north]{CustomName:'{"text":"Supplies Box","bold":true}'}
setblock 13 48 -14 stone_button[face=floor]
fill 13 51 -14 13 50 -14 barrier
kill @e[type=!player,type=!item,x=-13,y=25,z=-40,dx=55,dy=3,dz=50]
setblock 12 52 -2 respawn_anchor destroy
setblock 10 50 -18 respawn_anchor destroy
setblock 37 53 -29 respawn_anchor destroy
setblock 38 50 9 respawn_anchor destroy

#Doors (from level 1)
setblock 10 47 -13 air
setblock 10 47 -19 air
setblock 17 48 -17 air
setblock 16 47 -13 air

#Blocks
fill 40 50 -6 40 51 -6 nether_brick_fence

#Targets
setblock 12 55 -10 target
setblock 9 57 -15 target
setblock 14 57 -18 target
setblock 14 57 -10 target

advancement grant @a[tag=mg19_win] only mk:achieve_all mg19
execute as @a[tag=mg19_win] at @s store success score @s 3 run advancement grant @s only mk:unlock_all mg19
scoreboard players add @a[tag=mg19_win,scores={mg8.1=1..,3=1}] 7 1
team leave @a[tag=mg19_win]
title @a[tag=mg19_win] reset
effect clear @a[tag=mg19_win]
effect give @a[tag=mg19_win] slow_falling 1 1 true
effect give @a[tag=mg19_win] regeneration 1 255 true
effect give @a[tag=mg19_win] weakness 1000000 255 true
spawnpoint @a[tag=mg19_win] -18 4 -25
clear @a[tag=mg19_win] #dd_items{mg:19}
scoreboard players reset * mg19
scoreboard players reset * mg19.1
execute as @a[tag=mg19_win] at @s run function mk:exit
tag @a remove mg19_1
tag @a remove mg19_2
tag @a remove mg19_3
tag @a remove mg19_4
tag @a remove mg19_win
data merge block -14 5 -25 {Text3:''}