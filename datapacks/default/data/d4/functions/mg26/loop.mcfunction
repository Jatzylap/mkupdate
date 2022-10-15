#Spectators
gamemode spectator @a[tag=SPmg26]
execute as @a[tag=SPmg26] at @s unless entity @s[x=12,y=2,z=-386,dx=18,dy=18,dz=18] run tp 21 8 -377
team leave @a[scores={mg26=1..},tag=TCplayers,tag=SPmg26]
tag @a[scores={mg26=1..},tag=SPmg26] remove TCplayers

execute as @a[scores={mg26=1..,lobby=1..}] at @s run tag @s remove TCplayers
tag @a[scores={mg26=1..,lobby=1..},tag=TCplayers] remove mg26_win1
tag @a[scores={mg26=1..,lobby=1..},tag=TCplayers] remove mg26_win2
tag @a[scores={mg26=1..,lobby=1..},tag=TCplayers] remove mg26_win3
execute as @a[scores={mg26=1..,lobby=1..}] at @s run tag @s remove SPmg26
execute as @a[scores={mg26=1..,lobby=1..}] at @s run scoreboard players reset @s mg26
execute as @a[scores={mg26=1..,2=1..},tag=st0red] at @s run function mk:exit
tag @a[scores={mg26=1..,2=1..},tag=TCplayers] remove mg26_win1
tag @a[scores={mg26=1..,2=1..},tag=TCplayers] remove mg26_win2
tag @a[scores={mg26=1..,2=1..},tag=TCplayers] remove mg26_win3
execute as @a[scores={mg26=1..},nbt={DeathTime:9s}] at @s run tag @s remove TCplayers
tag @a[scores={mg26=1..},nbt={DeathTime:9s},tag=TCplayers] remove mg26_win1
tag @a[scores={mg26=1..},nbt={DeathTime:9s},tag=TCplayers] remove mg26_win2
tag @a[scores={mg26=1..},nbt={DeathTime:9s},tag=TCplayers] remove mg26_win3
execute as @a[scores={mg26=1..},nbt={DeathTime:9s}] at @s run tag @s remove SPmg26
execute as @a[scores={mg26=1..},nbt={DeathTime:9s}] at @s run scoreboard players reset @s mg26

#Main
execute if score @e[name="M@K",limit=1] mg26 matches 1.. as @e[tag=mg26,tag=chest,limit=1] at @s unless entity @s[x=21,y=0,z=-377,distance=..2] run tp @s ~ ~-0.02 ~
execute if score @e[name="M@K",limit=1] mg26 matches 1.. as @e[tag=mg26,tag=chest,limit=1] at @s if entity @s[x=21,y=0,z=-377,distance=..2] run function d4:mg26/dispel
scoreboard players add @e[name="M@K",limit=1,scores={mg26.1=0..}] mg26.1 1
scoreboard players add @e[name="M@K",limit=1,scores={mg26.3=0..}] mg26.3 1
execute if score @e[name="M@K",limit=1] mg26.1 matches 280 as @e[tag=q,tag=mg26] at @s align xyz run tp ~0.5 1 ~0.5
execute if score @e[name="M@K",limit=1] mg26.1 matches 280 as @e[tag=q,tag=mg26] at @s align xyz run data merge entity @s {NoGravity:1}
execute if score @e[name="M@K",limit=1] mg26.1 matches 300 if score @e[name="M@K",limit=1] mg26 matches 1 if entity @a[scores={mg26=1..},tag=TCplayers] run function d4:mg26/quiz1
execute if score @e[name="M@K",limit=1] mg26.1 matches 300 if score @e[name="M@K",limit=1] mg26 matches 2 if entity @a[scores={mg26=1..},tag=TCplayers] run function d4:mg26/quiz2
execute if score @e[name="M@K",limit=1] mg26.1 matches 300 if score @e[name="M@K",limit=1] mg26 matches 3 if entity @a[scores={mg26=1..},tag=TCplayers] run function d4:mg26/quiz3
scoreboard players reset @e[name="M@K",limit=1,scores={mg26.1=350..}] mg26.1
execute if entity @e[name="M@K",limit=1,tag=mg26_start] store result bossbar tc_progress value run scoreboard players get @e[name="M@K",limit=1] mg26.2
bossbar set tc_progress players @a[scores={mg26=1..},x=12,y=2,z=-386,dx=18,dy=18,dz=18]
execute as @e[tag=q,tag=mg26,tag=!mg26_rem,tag=!incorrect,tag=!mg26_rev] at @s unless data entity @s ArmorItems[3].id unless score @e[name="M@K",limit=1] mg26.1 matches 290.. run particle dust 1 1 1 3 ~ ~0.5 ~ .3 .5 .3 .6 30 force @a[scores={mg26=1..}]
execute as @e[tag=q,tag=mg26,tag=!mg26_rem,tag=!incorrect,tag=!mg26_rev] at @s unless data entity @s ArmorItems[3].id if score @e[name="M@K",limit=1] mg26.1 matches 290.. run particle dust 1 1 1 3 ~ 1.5 ~ .3 .5 .3 .6 30 force @a[scores={mg26=1..}]
execute as @e[tag=q,tag=mg26,tag=!mg26_rem,tag=!incorrect,tag=mg26_rev] at @s if data entity @s ArmorItems[3].id run particle dust 1 1 1 3 ~ ~1.75 ~ 0 0 0 0 1 force @a[scores={mg26=1..}]
execute as @e[tag=q,tag=mg26,tag=!mg26_rem,tag=!incorrect,tag=mg26_rev] at @s run tp @s ^ ^ ^0.17 facing entity @e[tag=magnet,tag=mg26,limit=1]
execute as @e[tag=mg26,tag=q,tag=!mg26_rev] at @s if data entity @s ArmorItems[3].id run tp @s ~ ~ ~ ~1.5 0

#Answer Question
execute if entity @e[name="M@K",limit=1,tag=mg26_start] unless entity @e[tag=mg26_start,scores={mg26.1=0..}] as @e[tag=q,tag=mg26,tag=!correct,tag=!mg26_rev,tag=!mg26_rem,tag=!incorrect] at @s unless data entity @s ArmorItems[3].id run function d4:mg26/incorrect
execute if entity @e[name="M@K",limit=1,tag=mg26_start] unless entity @e[tag=mg26_start,scores={mg26.1=0..}] as @e[tag=q,tag=mg26,tag=correct,tag=!mg26_rev,tag=!mg26_rem,tag=!incorrect] at @s unless data entity @s ArmorItems[3].id run function d4:mg26/correct
execute if entity @e[name="M@K",limit=1,tag=mg26_start] unless entity @e[tag=mg26_start,scores={mg26.1=0..}] as @e[tag=q,tag=mg26,tag=!mg26_rem] at @s unless data entity @s ArmorItems[3].id run tag @s add mg26_rev

#Punishment
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 50.. run effect clear @a[scores={mg26=1..},tag=TCplayers] resistance
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 50.. run effect clear @a[scores={mg26=1..},tag=TCplayers] saturation
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 50.. run effect clear @a[scores={mg26=1..},tag=TCplayers] regeneration
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 50 run tellraw @a[scores={mg26=1..}] ["",{"text":">","color":"gray"},{"text":" Suffer or pay the price! Hold your breath for thirty seconds... Or die trying.","color":"yellow"}]
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 50 run fill 13 -1 -369 29 -1 -385 air replace redstone_block

execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 50 run setblock 24 13 -367 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 52 run setblock 18 13 -367 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 54 run setblock 11 13 -374 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 56 run setblock 11 13 -380 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 58 run setblock 18 13 -387 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 60 run setblock 24 13 -387 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 62 run setblock 31 13 -380 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 64 run setblock 31 13 -374 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 66 run setblock 23 20 -374 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 68 run setblock 19 20 -374 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 70 run setblock 19 20 -380 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 72 run setblock 23 20 -380 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 200 run fill 30 2 -368 12 2 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 210 run fill 30 3 -368 12 3 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 220 run fill 30 4 -368 12 4 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 230 run fill 30 5 -368 12 5 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 240 run fill 30 6 -368 12 6 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 250 run fill 30 7 -368 12 7 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 260 run fill 30 8 -368 12 8 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 270 run fill 30 9 -368 12 9 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 280 run fill 30 10 -368 12 10 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 290 run fill 30 11 -368 12 11 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 300 run fill 30 12 -368 12 12 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 310 run fill 30 13 -368 12 13 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 320 run fill 30 14 -368 12 14 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 330 run fill 30 15 -368 12 15 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 340 run fill 30 16 -368 12 16 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 350 run fill 30 17 -368 12 17 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 360 run fill 30 18 -368 12 18 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 370 run fill 30 19 -368 12 19 -386 water
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 370 run summon drowned 26 10 -383 {DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,Tags:[mg26]}
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 370 run summon drowned 26 7 -374 {DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,Tags:[mg26]}
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 370 run summon drowned 15 4 -372 {DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,Tags:[mg26]}
execute if score @e[name="M@K",limit=1,tag=mg26_start] mg26.3 matches 370 run summon drowned 19 12 -380 {DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,Tags:[mg26]}

#Timer
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 370 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:20","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 390 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:19","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 410 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:18","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 430 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:17","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 450 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:16","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 470 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:15","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 490 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:14","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 510 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:13","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 530 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:12","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 550 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:11","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 570 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:10","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 590 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:09","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 610 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:08","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 630 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:07","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 650 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:06","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 670 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:05","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 690 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:04","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 710 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:03","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 730 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:02","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 750 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:01","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 770 run title @a[scores={mg26=1..}] actionbar ["",{"text":"00:00","color":"white","bold":true}]
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 770 as @e[type=drowned,tag=mg26] at @s run data merge entity @s {Health:0,DeathTime:19s}
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 880 run fill 11 13 -367 31 13 -387 black_concrete replace water
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 880 run fill 24 20 -374 18 20 -380 black_concrete replace water
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 880 run fill 12 13 -386 30 13 -368 air replace black_concrete
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 875 run fill 30 2 -368 12 2 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 870 run fill 30 3 -368 12 3 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 865 run fill 30 4 -368 12 4 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 860 run fill 30 5 -368 12 5 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 855 run fill 30 6 -368 12 6 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 850 run fill 30 7 -368 12 7 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 845 run fill 30 8 -368 12 8 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 840 run fill 30 9 -368 12 9 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 835 run fill 30 10 -368 12 10 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 830 run fill 30 11 -368 12 11 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 825 run fill 30 12 -368 12 12 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 820 run fill 30 13 -368 12 13 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 815 run fill 30 14 -368 12 14 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 810 run fill 30 15 -368 12 15 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 805 run fill 30 16 -368 12 16 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 800 run fill 30 17 -368 12 17 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 795 run fill 30 18 -368 12 18 -386 air
execute if score @e[limit=1,tag=mg26_start] mg26.3 matches 790 run fill 30 19 -368 12 19 -386 air

execute if score @e[limit=1,tag=mg26_start,scores={mg26=1..}] mg26.3 matches 910 run setblock 21 2 -377 polished_blackstone_pressure_plate
execute if entity @e[tag=q,x=21,y=1,z=-371,dy=2,tag=mg26] if score @e[limit=1,tag=mg26_start,scores={mg26=1..}] mg26.3 matches 910 run function d4:mg26/elevate1
execute if entity @e[tag=q,x=15,y=1,z=-371,dy=2,tag=mg26] if score @e[limit=1,tag=mg26_start,scores={mg26=1..}] mg26.3 matches 910 run function d4:mg26/elevate2
execute if score @e[limit=1,tag=mg26_start,scores={mg26=1..}] mg26.3 matches 910 run function d4:mg26/reset-lights
execute if score @e[limit=1,tag=mg26_start,scores={mg26=1..}] mg26.3 matches 910 run effect give @a[scores={mg26=1..},tag=TCplayers] regeneration 1 255 true
execute if score @e[limit=1,tag=mg26_start,scores={mg26=1..}] mg26.3 matches 910 as @e[tag=q,tag=mg26,tag=!incorrect] at @s run data merge entity @s {CustomNameVisible:1,Marker:0,ArmorItems:[{},{},{},{Count:1,id:player_head,tag:{gui:1,SkullOwner:{Id:[I;-1976825215,236734549,-1658047453,463009043],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDNkMDRkYmE1MWY4OTI0OTU4MzRmZjcxYTQyOWE4YTkxMDE1YTVhNzg2Yjg1NmZmZTljMDI0Y2RiNTJmYmM4ZiJ9fX0="}]}}}}]}
execute if score @e[limit=1,tag=mg26_start,scores={mg26=1..}] mg26.3 matches 910 run tag @e[tag=q,tag=mg26] remove mg26_rem
scoreboard players reset @e[name="M@K",limit=1,tag=mg26_start,scores={mg26.3=910..}] mg26.3


#end
execute if entity @e[tag=mg26_start,scores={mg26=0..}] unless entity @a[scores={mg26=1..},tag=TCplayers] run function d4:mg26/end

#draw title anim
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 0 run tag @a[scores={mg26=1..},tag=TCplayers,team=!] add mg26_win
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 14 run playsound ui.toast.challenge_complete master @a[scores={mg26=1..}] ~ ~ ~ 1000 1.2
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 0 run title @a[scores={mg26=1..}] times 0 20 36
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 0 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"         AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 2 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"        AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 4 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"       AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 6 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"      AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 8 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"    AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 10 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"   AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 12 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"  AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 14 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":" AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 16 run title @a[scores={mg26=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 21 run title @a[scores={mg26=1..}] title ["",{"text":"- D","color":"gold","bold":true},{"text":"R","color":"light_purple"},{"text":"AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 23 run title @a[scores={mg26=1..}] title ["",{"text":"- DR","color":"gold","bold":true},{"text":"AW","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 25 run title @a[scores={mg26=1..}] title ["",{"text":"- DRA","color":"gold","bold":true},{"text":"W","color":"green"},{"text":" -","color":"gold"}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 26 run title @a[scores={mg26=1..}] title ["",{"text":"- DRAW -","color":"gold","bold":true}]
#execute as @e[name="M@K",limit=1] at @s if score @s mg26.8 matches 20 run title @a[scores={mg26=1..}] subtitle ["",{"score":{"name":"@r[team=mg26-pink,tag=TCplayers]","objective":"mg26.7"},"color":"light_purple","bold":true},{"text":" - ","color":"gold","bold":true},{"score":{"name":"@r[team=mg26-green,tag=TCplayers]","objective":"mg26.7"},"color":"green","bold":true}]
