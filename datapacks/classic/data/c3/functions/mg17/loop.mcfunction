#Main
scoreboard players add @a[tag=mg17_lvl] mg17 1
execute as @a[scores={mg17=1..},tag=mg17_lvl] at @s if score @s mg17 matches 2 run playsound entity.player.levelup master @s ~ ~ ~ 100 1.75
execute as @a[scores={mg17=1..},tag=mg17_lvl] at @s if score @s mg17 matches 4 run playsound block.note_block.bell master @s ~ ~ ~ 100 1.5
execute as @a[scores={mg17=1..},tag=mg17_lvl] at @s if score @s mg17 matches 6 run playsound block.note_block.bell master @s ~ ~ ~ 100 1.8
execute as @a[scores={mg17=1..},tag=mg17_lvl] at @s if score @s mg17 matches 6 run playsound block.note_block.bell master @s ~ ~ ~ 100 1.3
execute as @a[scores={mg17=1..},tag=mg17_lvl] at @s if score @s mg17 matches 8 run playsound block.note_block.bell master @s ~ ~ ~ 100 1
execute as @a[scores={mg17=1..},tag=mg17_lvl] at @s if score @s mg17 matches 8 run scoreboard players set @s mg17 1
execute as @a[scores={mg17=1..},tag=mg17_lvl] at @s if score @s mg17 matches 1 run tag @s remove mg17_lvl

scoreboard players add @a[tag=mg17_lvl2] mg17 1
execute as @a[scores={mg17=1..},tag=mg17_lvl2] at @s if score @s mg17 matches 2 run playsound entity.player.levelup master @s ~ ~ ~ 100 1.75
execute as @a[scores={mg17=1..},tag=mg17_lvl2] at @s if score @s mg17 matches 4 run playsound block.note_block.bell master @s ~ ~ ~ 100 1.5
execute as @a[scores={mg17=1..},tag=mg17_lvl2] at @s if score @s mg17 matches 6 run playsound block.note_block.bell master @s ~ ~ ~ 100 1.8
execute as @a[scores={mg17=1..},tag=mg17_lvl2] at @s if score @s mg17 matches 6 run playsound block.note_block.bell master @s ~ ~ ~ 100 1.5
execute as @a[scores={mg17=1..},tag=mg17_lvl2] at @s if score @s mg17 matches 8 run playsound block.note_block.bell master @s ~ ~ ~ 100 1
execute as @a[scores={mg17=1..},tag=mg17_lvl2,tag=!PG] at @s if score @s mg17 matches 20 run function mk:exit
execute as @a[scores={mg17=1..},tag=Win] at @s if score @s mg17 matches 20 run function c3:reset

particle end_rod 692 80 -95 0.1 1.5 0.1 0.03 1 normal @a[scores={mg17=1..}]
particle totem_of_undying 692 82 -95 0.1 0.5 0.1 0.03 5 normal @a[scores={mg17=1..}]

execute as @a[scores={mg17=1..},tag=!Win,x=692,y=83,z=-95,dy=2] at @s run function c3:mg17/prize4
execute as @a[scores={mg17=1..}] at @s run schedule function c3:mg17/loop 1