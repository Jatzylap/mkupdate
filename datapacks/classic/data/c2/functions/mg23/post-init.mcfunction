tag @s add mg23_start
scoreboard players reset * mg23.3
scoreboard players set @s mg23.4 0
scoreboard players set @a[scores={mg23=1..},tag=CTFplayers] mg23.8 0
execute in sister_dimension run fill -18 5 51 -16 5 51 air
execute in sister_dimension run fill 37 5 -164 39 5 -164 air
execute in sister_dimension run fill -11 21 66 -23 21 54 air replace barrier
execute in sister_dimension run fill 32 21 -167 44 21 -179 air replace barrier
execute if predicate 50-50 run tag @e[tag=mg23_start,limit=1] add mg23_b1
tag @e[tag=mg23_start,tag=!mg23_b1,limit=1] add mg23_b2
bossbar set ctf_countdown max 8400

title @a[scores={mg23=1..},tag=CTFplayers] title [""]
title @a[scores={mg23=1..},team=mg23-blue] subtitle ["",{"text":"Your flag has been set!","color":"blue"}]
title @a[scores={mg23=1..},team=mg23-red] subtitle ["",{"text":"Your flag has been set!","color":"red"}]
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s run particle flash ~ ~ ~ 1 1 1 1 85 normal @s
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s run particle firework ~ ~ ~ 0 0 0 1 185 normal @a[scores={mg23=1..}]
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1000 0.7
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s run playsound entity.zombie_villager.convert master @s ~ ~ ~ 1000 1.5

execute in sister_dimension run fill 88 30 -16 89 35 -9 red_wool replace #wool
execute in sister_dimension run fill -75 30 -121 -76 36 -114 blue_wool replace #wool
execute in sister_dimension run spawnpoint @a[scores={mg23=1..},team=mg23-blue,tag=CTFplayers] -11 4 54
execute in sister_dimension run spawnpoint @a[scores={mg23=1..},team=mg23-red,tag=CTFplayers] 32 4 -167